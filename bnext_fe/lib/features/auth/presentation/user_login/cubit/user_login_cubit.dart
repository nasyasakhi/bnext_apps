import 'package:bloc/bloc.dart';
import '../../../../../core/data/error/error_object.dart';
import '../../../domain/domain.dart';
import '../../../params/login_params.dart';
import '../../../../shared/domain/entities/token_entity.dart';
import 'package:injectable/injectable.dart';

import 'user_login_state.dart';

@injectable
class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit(this._loginUsecase) : super(const UserLoginState.initial());

  final LoginUseCase _loginUsecase;

  void login(LoginParams params) async {
    emit(const UserLoginState.loading());
    final data = await _loginUsecase.call(params);

    emit(data.fold(
      (l) => UserLoginState.error(ErrorObject.fromFailure(l)),
      (r) {
        return UserLoginState.success(r);
      },
    ));
  }
}