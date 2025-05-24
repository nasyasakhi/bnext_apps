import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/error/error_object.dart';
import '../../../domain/usecase/sendotp_use_case.dart';
import '../../../domain/usecase/verifyotp_use_case.dart';
import '../../../params/verify_otp_params.dart';
import 'otp_state.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this._verifyOtpUseCase, this._sendOtpUseCase)
      : super(const OtpState.initial());

  final VerifyotpUseCase _verifyOtpUseCase;
  final SendotpUseCase _sendOtpUseCase;

  Future<void> verifyOtp(VerifyOtpParams params) async {
    emit(const OtpState.loading());

    final either = await _verifyOtpUseCase.call(params);

    emit(
      either.fold(
        (failure) => OtpState.error(_safeParseFailure(failure)),
        (user) => OtpState.success(user),
      ),
    );
  }

  Future<void> sendOtp(VerifyOtpParams params) async {
    print('[OtpCubit] Sending OTP to: ${params.email}');
    emit(const OtpState.loading(isResend: true));

    final either = await _sendOtpUseCase.call(params);

    emit(
      either.fold(
        (failure) {
          print('[OtpCubit] Send OTP failed: ${failure.message}');
          return OtpState.error(_safeParseFailure(failure));
        },
        (_) {
          print('[OtpCubit] OTP sent successfully');
          return const OtpState.successSendOtp();
        },
      ),
    );
  }
  
  String _currentOtp = '';

  void updateOtp(String otp) {
    _currentOtp = otp;
    
  }

  String get currentOtp => _currentOtp;

  ErrorObject _safeParseFailure(dynamic failure) {
    try {
      final error = ErrorObject.fromFailure(failure);
      return error.copyWith(
        errorMessage: error.errorMessage ?? 'Unknown error occurred',
      );
    } catch (_) {
      return ErrorObject(
        errorMessage: 'Failed to parse error response',
        errorCode: '-1',
        title: 'Error Parsing',
        readableMessage: 'An unexpected error occurred. Please try again later.',
      );
    }
  }
}