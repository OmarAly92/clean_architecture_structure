import 'package:clean_architecture_structure/core/utils/type_def.dart';

abstract class UseCaseWithParams<Type, Params> {
  Future<Result<Type>> call(Params params);
}

abstract class UseCaseWithoutParams<Type> {
  Future<Result<Type>> call();
}
