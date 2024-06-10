import 'package:clean_architecture_structure/core/error/failure.dart';
import 'package:clean_architecture_structure/feature/auth/data/model/arguments/login_params.dart';
import 'package:clean_architecture_structure/feature/auth/domain/use_case/login_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._loginUseCase) : super(AuthInitial());

  final LoginUseCase _loginUseCase;

  Future<void> login(LoginParams params) async {
    emit(LoginLoading());
    final result = await _loginUseCase(params);
    result.fold(
      (failure) {
        emit(LoginFailure(failure));
      },
      (loginEntity) {
        /// save token here in secure DB [loginEntity.token]
        emit(LoginSuccess());
      },
    );
  }
}
