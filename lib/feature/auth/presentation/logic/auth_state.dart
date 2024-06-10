part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();
}

final class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

final class LoginLoading extends AuthState {
  @override
  List<Object> get props => [];
}

final class LoginSuccess extends AuthState {
  @override
  List<Object> get props => [];
}

final class LoginFailure extends AuthState {
  final Failure failure;

  const LoginFailure(this.failure);

  @override
  List<Object> get props => [failure];
}
