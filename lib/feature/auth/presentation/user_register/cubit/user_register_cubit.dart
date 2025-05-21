import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/error/error_object.dart';
import '../../../domain/domain.dart';
import '../../../params/register_params.dart';
import 'user_register_state.dart';

@injectable
class UserRegisterCubit extends Cubit<UserRegisterState> {
  UserRegisterCubit(this._registerUsecase)
      : super(const UserRegisterState.initial());

  final RegisterUseCase _registerUsecase;

    void register(RegisterParams params) async {
      emit(const UserRegisterState.loading());

      try {
        final either = await _registerUsecase.call(params);

        emit(either.fold(
          (failure) => UserRegisterState.error(
              // Pastikan buat ErrorObject dari failure, contoh:
              ErrorObject.fromFailure(failure)
          ),
          (r) => const UserRegisterState.success(),
        ));
      } catch (e, stackTrace) {
        print('[UserRegisterCubit] Unexpected error: $e');
        print(stackTrace);

        emit(UserRegisterState.error(
          ErrorObject(
            readableMessage: 'Unexpected error occurred',
            errorMessage: e.toString(), title: '',
          ),
        ));
      }
    }


}
