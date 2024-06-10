import 'package:clean_architecture_structure/core/use_case/use_case.dart';
import 'package:clean_architecture_structure/core/utils/type_def.dart';
import 'package:clean_architecture_structure/feature/auth/data/model/arguments/login_params.dart';
import 'package:clean_architecture_structure/feature/auth/domain/entity/login_entity.dart';
import 'package:clean_architecture_structure/feature/auth/domain/repository/auth_repository.dart';

class LoginUseCase implements UseCaseWithParams<LoginEntity, LoginParams> {
  LoginUseCase(this._repository);

  final AuthRepository _repository;

  @override
  FutureResult<LoginEntity> call(LoginParams params) async {
    return await _repository.login(params);
  }
}
