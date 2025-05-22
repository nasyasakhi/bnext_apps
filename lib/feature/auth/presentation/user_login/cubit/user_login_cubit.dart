import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/error/error_object.dart';
import '../../../domain/domain.dart';
import '../../../params/login_params.dart';
import 'user_login_state.dart';

@injectable
class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit(this._loginUsecase) : super(const UserLoginState.initial());

  final LoginUseCase _loginUsecase;

  void login(LoginParams params) async {
  print('[LoginCubit] Sending email to login: ${params.username}');
  print('[LoginCubit] Sending password to login: ${params.password}');

  emit(const UserLoginState.loading());

  final either = await _loginUsecase.call(params);

  either.fold(
    (failure) {
      print('[LoginCubit] Failed to send login: ${failure.message}');
      emit(UserLoginState.error(ErrorObject.fromFailure(failure)));
    },
    (user) {
      print('[LoginCubit] Login sent successfully!');
      emit(UserLoginState.success(user));
    },
  );
}

}
