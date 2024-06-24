import 'package:clean_architecture_structure/feature/auth/presentation/login/ui/login_view.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://b1420df38084b9f3cdf880ca53a7f939@o4507413385248768.ingest.us.sentry.io/4507413435056128';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 0.01;
    },
    appRunner: () => runApp(const MyApp()),
  );

  // tryCatch(
  //   onTry: () {
  //     int? test;
  //     test! + 3;
  //   },
  //   onCatch: () {},
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
