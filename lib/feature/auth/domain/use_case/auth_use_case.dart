import 'package:clean_architecture_structure/core/use_case/use_case.dart';
import 'package:clean_architecture_structure/core/utils/type_def.dart';
import 'package:clean_architecture_structure/feature/auth/domain/repository/auth_repository.dart';

class LoginUseCase implements UseCaseWithParams {
  LoginUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Result> call(params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
