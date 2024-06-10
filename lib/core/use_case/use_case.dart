import 'package:clean_architecture_structure/core/utils/type_def.dart';

abstract class UseCaseWithParams<Type, Params> {
  FutureResult<Type> call(Params params);
}

abstract class UseCaseWithoutParams<Type> {
  FutureResult<Type> call();
}
