// lib/src/features/auth/data/auth_repository_provider.dart

import 'package:ez_fit_app/src/features/_core/auth/data/auth_repository.dart';
import 'package:ez_fit_app/src/features/_core/auth/data/auth_repository_supabase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_repository_provider.codegen.g.dart';

/// Provider to manage authentication repository.
@riverpod
AuthRepository authRepository(Ref ref) {
  final supabaseClient = Supabase.instance.client;
  return AuthRepositorySupabase(supabaseClient);
}
