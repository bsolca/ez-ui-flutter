import 'dart:async';
import 'dart:io';

import 'package:ez_fit_app/src/utils/constants/ez_const_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Bootstraps the app.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // Ensure that the app is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Init Hive
  await Hive.initFlutter();
  await Hive.openBox<String?>(EzConstString.hiveId);
  await Hive.openBox<String>(EzConstString.hiveUserSettings);

  // Initialize Supabase
  final supabaseUrl = Platform.environment['SUPABASE_URL'];
  final supabaseAnonKey = Platform.environment['SUPABASE_ANON_KEY'];
  if (supabaseUrl == null || supabaseAnonKey == null) {
    throw Exception(
      'SUPABASE_URL and/or SUPABASE_ANON_KEY environment variable is missing',
    );
  }
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );

  // Run the app
  runApp(
    ProviderScope(
      child: await builder(),
    ),
  );
}