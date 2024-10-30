// lib/src/features/auth/data/auth_repository_provider.dart

import 'package:impostor/src/features/auth/data/auth_repository.dart';
import 'package:impostor/src/features/auth/data/auth_repository_supabase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_repository_provider.codegen.g.dart';

/// Provider to manage authentication repository.
@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final supabaseClient = Supabase.instance.client;
  return AuthRepositorySupabase(supabaseClient);
}
