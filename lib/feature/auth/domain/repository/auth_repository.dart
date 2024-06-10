import 'package:clean_architecture_structure/core/utils/type_def.dart';
import 'package:clean_architecture_structure/feature/auth/data/model/arguments/login_params.dart';
import 'package:clean_architecture_structure/feature/auth/domain/entity/login_entity.dart';

abstract class AuthRepository {
  FutureResult<LoginEntity> login(LoginParams params);
}
