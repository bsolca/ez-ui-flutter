import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_state.codegen.g.dart';

/// Provider to manage the toggle state between login and register modes
@riverpod
Stream<bool> authState(AuthStateRef ref) async* {
  // Listening to Supabase auth state changes
  final authStream = Supabase.instance.client.auth.onAuthStateChange
      .map((event) => event.session != null);
  yield* authStream;
}
