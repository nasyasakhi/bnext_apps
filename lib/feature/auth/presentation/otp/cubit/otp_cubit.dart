import 'package:bloc/bloc.dart';
import '../../../../../core/data/error/error_object.dart';
import '../../../domain/usecase/sendotp_use_case.dart';
import '../../../domain/usecase/verifyotp_use_case.dart';
import '../../../params/verify_otp_params.dart';
import 'package:injectable/injectable.dart';

import 'otp_state.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this._veifOtpUsecase, this._sendotpUseCase)
      : super(const OtpState.initial());

  final VerifyotpUseCase _veifOtpUsecase;
  final SendotpUseCase _sendotpUseCase;

  void verifyOtp(VerifyOtpParams params) async {
    emit(const OtpState.loading());

    final either = await _veifOtpUsecase.call(params);

    emit(either.fold((l) => OtpState.error(ErrorObject.fromFailure(l)),
        (r) => OtpState.success(r)));
  }

  Future<void> sendOtp(VerifyOtpParams params) async {
    emit(const OtpState.loading(isResend: true));

    final either = await _sendotpUseCase.call(params);

    emit(either.fold((l) => OtpState.error(ErrorObject.fromFailure(l)),
        (r) => const OtpState.succesResend()));
  }
}
