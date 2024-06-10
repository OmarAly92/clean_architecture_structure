import 'package:clean_architecture_structure/core/error/failure.dart';
import 'package:clean_architecture_structure/core/network/network_status.dart';
import 'package:clean_architecture_structure/core/network/status_code.dart';
import 'package:clean_architecture_structure/core/utils/app_translation_key.dart';
import 'package:clean_architecture_structure/core/utils/type_def.dart';
import 'package:clean_architecture_structure/feature/auth/data/data_source/remote_data_source/auth_remote_data_source.dart';
import 'package:clean_architecture_structure/feature/auth/data/model/arguments/login_params.dart';
import 'package:clean_architecture_structure/feature/auth/data/model/auth_model.dart';
import 'package:clean_architecture_structure/feature/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp(this._remoteDataSourceImp, this._networkStatus);

  final AuthRemoteDataSource _remoteDataSourceImp;
  final NetworkStatus _networkStatus;

  @override
  FutureResult<LoginModel> login(LoginParams params) async {
    if (await _networkStatus.isConnected) {
      try {
        final result = await _remoteDataSourceImp.login(params);
        return Right(result);
      } on Failure catch (e) {
        return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
      }
    } else {
      return const Left(ServerFailure(
        message: AppTranslationKey.noInternet,
        statusCode: StatusCode.noInternet,
      ));
    }
  }
}
