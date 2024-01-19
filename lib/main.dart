import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'core/core.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      await SentryFlutter.init(
        (options) {
          options.dsn = 'https://bb4d3602a6a3baf8085ef4f263fdabee@o4506536075329536.ingest.sentry.io/4506536077754368';

          options.tracesSampleRate = 1.0;
        },
        appRunner: () => runApp(const AppWidget()),
      );
    },
    (error, stack) async {
      await Sentry.captureException(error, stackTrace: stack);
    },
  );
}
