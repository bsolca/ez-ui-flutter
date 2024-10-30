import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'env_config.codegen.g.dart';

/// The provider that provides the environment variables.
@Riverpod(keepAlive: true)
class EnvConfig extends _$EnvConfig {
  @override
  Map<String, String> build() {
    // Retrieve environment variables and return them as a map
    final supabaseUrl = dotenv.env['SUPABASE_URL'];
    final supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY'];

    if (supabaseUrl == null) {
      throw ArgumentError('SUPABASE_URL is not set in the .env file');
    }
    if (supabaseAnonKey == null) {
      throw ArgumentError('SUPABASE_ANON_KEY is not set in the .env file');
    }

    return {
      'supabaseUrl': supabaseUrl,
      'supabaseAnonKey': supabaseAnonKey,
    };
  }
}
