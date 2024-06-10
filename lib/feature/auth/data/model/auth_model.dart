import 'package:clean_architecture_structure/feature/auth/domain/entity/login_entity.dart';

class LoginModel extends LoginEntity {
  const LoginModel({required super.token});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      token: json['token'] as String,
    );
  }
}
