// lib/src/features/auth/data/auth_repository.dart

/// Interface class for authentication repository.
abstract interface class AuthRepository {
  /// Sign up a user with email, password, first and last names.
  Future<void> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  });

  /// Login a user with email and password.
  Future<void> login({
    required String email,
    required String password,
  });

  /// Logout the current user.
  Future<void> logout();

  /// Get the currently logged-in user, if any.
  String? get userId;
}
