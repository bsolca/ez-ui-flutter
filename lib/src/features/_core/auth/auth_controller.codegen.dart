// lib/src/features/auth/presentation/auth_controller.dart

import 'package:impostor/src/features/_core/auth/service/auth_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.codegen.g.dart';

/// Controller for authentication.
@riverpod
class AuthController extends _$AuthController {
  late final AuthService _authService;

  @override
  FutureOr<void> build() {
    _authService = ref.watch(authServiceProvider);
  }

  /// Method to handle user sign-up.
  Future<void> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    state = const AsyncValue.loading();
    try {
      await _authService.signUp(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
      );
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  /// Method to handle user login.
  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    try {
      await _authService.login(
        email: email,
        password: password,
      );
      state = const AsyncValue.data(null); // Success
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  /// Method to handle user logout.
  Future<void> logout() async {
    state = const AsyncValue.loading();
    try {
      await _authService.logout();
      state = const AsyncValue.data(null); // Success
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  /// Get the current authenticated user, if any.
  String? get userId => _authService.userId;
}
