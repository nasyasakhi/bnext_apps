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
        (failure) {
          // Gunakan helper _safeParseFailure agar error parsing aman
          final safeError = _safeParseFailure(failure);
          return OtpState.error(safeError);
        },
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
        // Pakai helper yang sama untuk parsing error
        final safeError = _safeParseFailure(failure);
        emit(OtpState.error(safeError));
      },
      (_) {
        print('[OtpCubit] OTP sent successfully!');
        emit(const OtpState.successSendOtp());
      },
    );
  }

  /// Helper function to safely parse failure into ErrorObject,
  /// handling null or wrong types to avoid casting errors.
  ErrorObject _safeParseFailure(dynamic failure) {
  try {
    final errorObj = ErrorObject.fromFailure(failure);
    final safeMessage = errorObj.errorMessage ?? 'Unknown error occurred';
    return errorObj.copyWith(errorMessage: safeMessage);
  } catch (e) {
    return ErrorObject(
      errorMessage: 'Failed to parse error response',
      errorCode: '-1',
      title: 'Error Parsing',
      readableMessage: 'An unexpected error occurred. Please try again later.',
    );
  }
}

}