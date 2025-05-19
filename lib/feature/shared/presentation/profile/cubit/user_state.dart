part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    UserEntity? user,
    @Default(false) bool isLoading,
    ErrorObject? failure,
  }) = _UserState;
}
