import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  const LoginEntity({required this.token});

  final String token;

  @override
  List<Object> get props => [token];
}
