

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/data/error/error_object.dart';

part 'user_register_state.freezed.dart';

@freezed
class UserRegisterState with _$UserRegisterState {
  const factory UserRegisterState.initial() = _Initial;
  const factory UserRegisterState.loading() = _Loading;
  const factory UserRegisterState.success() = _success;
  const factory UserRegisterState.error(ErrorObject error) = _error;

  const UserRegisterState._();
  bool get isLoading => this is _Loading;
}
