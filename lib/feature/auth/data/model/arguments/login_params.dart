import 'package:equatable/equatable.dart';

class LoginParams extends Equatable {
  final String email;
  final String password;
  final String userName;

  const LoginParams({
    required this.email,
    required this.password,
    required this.userName,
  });

  static toJson(LoginParams params) {
    return {
      "email": params.email,
      "password": params.password,
      "userName": params.userName,
    };
  }

  @override
  List<Object> get props => [email, password, userName];
}
