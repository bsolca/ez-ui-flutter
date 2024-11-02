// lib/src/features/auth/service/auth_service.codegen.dart

import 'package:ez_fit_app/src/features/_core/auth/data/auth_repository.dart';
import 'package:ez_fit_app/src/features/_core/auth/data/auth_repository_provider.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.codegen.g.dart';

/// AuthService handles authentication-related business logic, using the AuthRepository.
class AuthService {
  /// Creates an instance of AuthService with the provided AuthRepository.
  AuthService(this._authRepository);

  final AuthRepository _authRepository;

  /// Signs up a new user with the provided email, password, and name.
  Future<void> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    await _authRepository.signUp(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
    );
  }

  /// Logs in a user with the provided email and password.
  Future<void> login({
    required String email,
    required String password,
  }) async {
    await _authRepository.login(
      email: email,
      password: password,
    );
  }

  /// Logs out the current user.
  Future<void> logout() async {
    await _authRepository.logout();
  }

  /// Gets the current user from the AuthRepository.
  String? get userId => _authRepository.userId;


  /// Get username of the currently logged-in user, if any.
  Future<String?> get firstName async =>
      _authRepository.firstName;

  /// Get username of the currently logged-in user, if any.
  Future<String?> get lastName async =>
      _authRepository.lastName;

  /// Get email of the currently logged-in user, if any.
  Future<String?> get email async =>
      _authRepository.email;
}

/// Provider for AuthService, initialized with the appropriate AuthRepository.
@riverpod
AuthService authService(AuthServiceRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthService(authRepository);
}
