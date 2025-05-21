import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/error/error_object.dart';
import '../../../domain/usecase/sendotp_use_case.dart';
import '../../../domain/usecase/verifyotp_use_case.dart';
import '../../../params/verify_otp_params.dart';
import 'otp_state.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this._veifOtpUsecase, this._sendOtpUseCase)
      : super(const OtpState.initial());

  final VerifyotpUseCase _veifOtpUsecase;
  final SendotpUseCase _sendOtpUseCase;

  Future<void> verifyOtp(VerifyOtpParams params) async {
    emit(const OtpState.loading());

    final either = await _veifOtpUsecase.call(params);

    emit(
      either.fold(
        (failure) => OtpState.error(ErrorObject.fromFailure(failure)),
        (result) => OtpState.success(result),
      ),
    );
  }
Future<void> sendOtp(VerifyOtpParams params) async {
  print('[OtpCubit] Sending OTP to email: ${params.email}');
  
  emit(const OtpState.loading(isResend: true));

  final either = await _sendOtpUseCase.call(params);

  either.fold(
    (failure) {
      print('[OtpCubit] Failed to send OTP: ${failure.message}');
      emit(OtpState.error(ErrorObject.fromFailure(failure)));
    },
    (_) {
      print('[OtpCubit] OTP sent successfully!');
      emit(const OtpState.successSendOtp());
    },
  );
}



}
