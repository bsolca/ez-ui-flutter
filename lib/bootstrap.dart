import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:impostor/src/utils/constants/const_string.dart';

/// Bootstraps the app.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // Ensure that the app is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Init Hive
  await Hive.initFlutter();
  await Hive.openBox<String?>(ConstString.hiveId);
  await Hive.openBox<String>(ConstString.hiveUserSettings);

  // Run the app
  runApp(
    ProviderScope(
      child: await builder(),
    ),
  );
}
