import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:impostor/src/features/user/model/user_model.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'user_repository.codegen.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepository();
}

class UserRepository {
  final String _baseUrl = 'https://dummyjson.com';

  /// Fetches a list of users from the API.
  Future<List<UserModel>> fetchUsers() async {
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
