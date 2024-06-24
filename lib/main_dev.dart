import 'package:clean_architecture_structure/feature/auth/presentation/login/ui/login_view.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              child!,
              Banner(
                message: 'Dev',
                location: BannerLocation.topEnd,
                color: Colors.deepOrange,
              ),
            ],
          ),
        );
      },
      home: LoginView(),
    );
  }
}
