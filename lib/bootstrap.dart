import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:impostor/src/utils/constants/ez_const_string.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Bootstraps the app.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // Ensure that the app is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Init Hive
  await Hive.initFlutter();
  await Hive.openBox<String?>(EzConstString.hiveId);
  await Hive.openBox<String>(EzConstString.hiveUserSettings);

  // Load environment variables
  await dotenv.load();

  // Initialize Supabase
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  // Run the app
  runApp(
    ProviderScope(
      child: await builder(),
    ),
  );
}
