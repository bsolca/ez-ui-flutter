// lib/src/features/auth/data/auth_repository_supabase.dart

import 'package:ez_fit_app/src/features/_core/auth/data/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositorySupabase implements AuthRepository {
  AuthRepositorySupabase(this._client);

  final SupabaseClient _client;

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
    } on AuthException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }

  @override
  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await _client.auth.signInWithPassword(email: email, password: password);
    } on AuthException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('Failed to log in: $e');
    }
  }

  @override
  Future<void> logout() async {
    await _client.auth.signOut();
  }

  @override
  String? get userId => _client.auth.currentUser?.id;

  @override
  Future<String?> get email {
    final user = _client.auth.currentUser;
    if (user == null) {
      return Future.value();
    }
    return Future.value(user.email);
  }

  @override
  Future<String?> get firstName {
    final user = _client.auth.currentUser;
    final lastName = user?.userMetadata?['last_name'];
    if (user == null || lastName == null || lastName is! String) {
      return Future.value();
    }
    return Future.value(lastName);
  }

  @override
  Future<String?> get lastName {
    final user = _client.auth.currentUser;
    final firstName = user?.userMetadata?['first_name'];
    if (user == null || firstName == null || firstName is! String) {
      return Future.value();
    }
    return Future.value(firstName);
  }
}
