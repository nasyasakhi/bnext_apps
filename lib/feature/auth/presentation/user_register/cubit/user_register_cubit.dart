import 'package:bloc/bloc.dart';
import '../../../domain/domain.dart';
import '../../../params/register_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/error/error_object.dart';

import 'user_register_state.dart';

@injectable
class UserRegisterCubit extends Cubit<UserRegisterState> {
  UserRegisterCubit(this._registerUsecase)
      : super(const UserRegisterState.initial());

  final RegisterUseCase _registerUsecase;

  void register(RegisterParams params) async {
    emit(const UserRegisterState.loading());

    final either = await _registerUsecase.call(params);

    emit(either.fold((l) => UserRegisterState.error(ErrorObject.fromFailure(l)),
        (r) => const UserRegisterState.success()));
  }
}
