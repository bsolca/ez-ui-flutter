// lib/src/features/auth/data/auth_repository_supabase.dart

import 'package:supabase_flutter/supabase_flutter.dart';
import 'auth_repository.dart';

class AuthRepositorySupabase implements AuthRepository {
  final SupabaseClient _client;

  AuthRepositorySupabase(this._client);

  @override
  Future<void> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    try {
      await _client.auth.signUp(
        email: email,
        password: password,
        data: {'first_name': firstName, 'last_name': lastName},
      );
    } catch (e) {
      throw Exception('Failed to sign up: ${e.toString()}');
    }
  }

  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await _client.auth.signInWithPassword(email: email, password: password);
    } catch (e) {
      throw Exception('Failed to log in: ${e.toString()}');
    }
  }

  @override
  Future<void> logout() async {
    await _client.auth.signOut();
  }

  @override
  String? get userId => _client.auth.currentUser?.id;
}
