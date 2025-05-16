import 'package:bnext_fe/features/shared/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/data/error/error_object.dart';

part 'otp_state.freezed.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.loading({bool? isResend}) = _Loading;
  const factory OtpState.success(UserEntity user) = _success;
  const factory OtpState.succesResend() = _successResend;
  const factory OtpState.error(ErrorObject error) = _error;

  const OtpState._();
  bool get isLoading => this is _Loading && (this as _Loading).isResend == null;
  bool get isResendLoading =>
      this is _Loading && (this as _Loading).isResend == true;
}
