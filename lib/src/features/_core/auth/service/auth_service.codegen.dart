// lib/src/features/auth/service/auth_service.codegen.dart

import 'package:ez_fit_app/src/features/_core/auth/data/auth_repository.dart';
import 'package:ez_fit_app/src/features/_core/auth/data/auth_repository_provider.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.codegen.g.dart';

class AuthService {
  AuthService(this._authRepository);

  final AuthRepository _authRepository;

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

  Future<void> login({
    required String email,
    required String password,
  }) async {
    await _authRepository.login(
      email: email,
      password: password,
    );
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }

  String? get userId => _authRepository.userId;


  Future<String?> get firstName async =>
      _authRepository.firstName;

  Future<String?> get lastName async =>
      _authRepository.lastName;

  Future<String?> get email async =>
      _authRepository.email;
}

@riverpod
AuthService authService(AuthServiceRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthService(authRepository);
}
