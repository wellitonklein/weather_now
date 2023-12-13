import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

import 'core/core.dart';

void main() async {
  //
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const AppWidget(),
    ),
  );
}
