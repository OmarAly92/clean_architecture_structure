import 'package:clean_architecture_structure/core/routes/route_strings.dart';
import 'package:clean_architecture_structure/core/service_locator/service_locator.dart';
import 'package:clean_architecture_structure/core/utils/app_translation_key.dart';
import 'package:clean_architecture_structure/feature/auth/presentation/login/logic/login_cubit.dart';
import 'package:clean_architecture_structure/feature/auth/presentation/login/ui/login_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteStrings.login:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => sl<LoginCubit>(),
              child: const LoginView(),
            );
          },
        );
    }
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          body: Center(
            child: Text(AppTranslationKey.noRouteFound.tr()),
          ),
        );
      },
    );
  }
}
