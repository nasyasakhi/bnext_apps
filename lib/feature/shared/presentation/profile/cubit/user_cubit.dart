import 'package:bnext/core/core.dart';
import 'package:bnext/feature/shared/domain/usecase/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/error/error_object.dart';

import '../../../domain/domain.dart';
import '../../../domain/usecase/get_user.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';



@lazySingleton
class UserCubit extends Cubit<UserState> {
  UserCubit(
    this._getUserUseCase,
    this._saveUserUseCase,
  ) : super(const UserState());

  final GetUserUseCase _getUserUseCase;
  final SaveUserUseCase _saveUserUseCase;

  Future<UserEntity?> getUser() async {
  if (state.user != null) {
    return state.user;
  }
  emit(state.copyWith(isLoading: true));
  final either = await _getUserUseCase(NoParams());
  either.fold(
    (failure) {
      final errorObj = ErrorObject.fromFailure(failure);
      if (errorObj.readableMessage == "User is not authenticated") {
        // treat this as "no user" rather than error
        emit(state.copyWith(user: null, failure: null, isLoading: false));
      } else {
        emit(state.copyWith(failure: errorObj, isLoading: false));
      }
    },
    (user) => emit(state.copyWith(user: user, isLoading: false)),
  );
  return state.user;
}

  Future<void> saveUser({
    required UserEntity user,
    bool isAlsoSaveInStorage = false,
  }) async {
    if (isAlsoSaveInStorage) {
      await _saveUserUseCase(user);
    }
    emit(state.copyWith(user: user));
  }
  Future<void> clearData() async {
    emit(const UserState());
  }
}
