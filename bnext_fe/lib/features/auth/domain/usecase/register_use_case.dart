import '../../../../core/core.dart';
import '../../params/register_params.dart';
import '../../../shared/domain/entities/token_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../params/login_params.dart';
import '../domain.dart';

@lazySingleton
class RegisterUseCase implements UseCase<Object, RegisterParams> {
  RegisterUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure,Object>> call(RegisterParams params) {
    return _repository.register(params);
  }
}
