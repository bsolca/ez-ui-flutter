import 'dart:convert';

import 'package:ez_fit_app/src/features/user_fake/model/user_model.codegen.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository.codegen.g.dart';

/// Repository class for the [UserModel].
@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepository();
}

/// Repository class for the [UserModel].
class UserRepository {
  final String _baseUrl = 'https://dummyjson.com';

  /// Fetches a list of users from the API as a stream with a single emission.
  Stream<List<UserModel>> fetchUsersStream() {
    return Stream.fromFuture(_fetchUsersOnce());
  }

  /// Fetches a list of users from the API.
  Future<List<UserModel>> _fetchUsersOnce() async {
    final response = await http.get(Uri.parse('$_baseUrl/users'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final usersJson = data['users'] as List<dynamic>;

      final users = usersJson
          .map((userJson) {
            return UserModel.fromJson(userJson as Map<String, dynamic>);
          })
          .toList();
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
