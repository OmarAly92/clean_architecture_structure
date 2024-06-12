import 'package:sentry_flutter/sentry_flutter.dart';

void tryCatch({required Function onTry, required Function onCatch}) async {
  try {
    onTry();
  } catch (exception, stackTrace) {
    onCatch();
    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
    );
  }
}
