import 'package:clean_architecture_structure/core/shared_widgets/app_scaffold.dart';
import 'package:clean_architecture_structure/feature/auth/presentation/login/ui/widgets/body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: LoginBody(),
    );
  }
}
