import 'package:bnext/feature/shared/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/data/error/error_object.dart';
import '../../../../shared/domain/entities/token_entity.dart';

part 'user_login_state.freezed.dart';
@freezed
class UserLoginState with _$UserLoginState {
  const factory UserLoginState.initial() = _Initial;
  const factory UserLoginState.loading() = _Loading;
  const factory UserLoginState.success(UserEntity user) = _success;
  const factory UserLoginState.error(ErrorObject error) = _error;

  const UserLoginState._();
  bool get isLoading => this is _Loading;
}
