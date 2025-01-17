import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_service.codegen.g.dart';

/// Service for [GoRouter].
class GoRouterService {
  /// Creates a [GoRouterService].
  const GoRouterService();
}

/// Provider for [GoRouterService].
@riverpod
GoRouterService goRouterService(Ref ref) {
  return const GoRouterService();
}
