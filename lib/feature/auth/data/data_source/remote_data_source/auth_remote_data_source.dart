import 'package:clean_architecture_structure/core/network/api_consumer.dart';
import 'package:clean_architecture_structure/core/network/end_points.dart';
import 'package:clean_architecture_structure/feature/auth/data/model/arguments/login_params.dart';
import 'package:clean_architecture_structure/feature/auth/data/model/auth_model.dart';

abstract class AuthRemoteDataSource {
  Future<LoginModel> login(LoginParams params);
}

class AuthRemoteDataSourceImp implements AuthRemoteDataSource {
  AuthRemoteDataSourceImp(this._apiConsumer);

  final ApiConsumer _apiConsumer;

  @override
  Future<LoginModel> login(LoginParams params) async {
    final response = await _apiConsumer.post(
      EndPoints.login,
      body: LoginParams.toJson(params),
    );
    final loginModel = LoginModel.fromJson(response.data);

    return loginModel;
  }
}
