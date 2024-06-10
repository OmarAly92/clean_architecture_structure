import 'package:clean_architecture_structure/core/error/failure.dart';
import 'package:dartz/dartz.dart';

typedef Result<T> = Either<Failure, T>;
typedef FutureResult<T> = Future<Result<T>>;
typedef MapData = Map<String, dynamic>;
