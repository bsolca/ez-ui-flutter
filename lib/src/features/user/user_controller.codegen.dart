import 'package:impostor/src/features/user/model/user_model.codegen.dart';
import 'package:impostor/src/features/user/service/user_service.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_controller.codegen.g.dart';

/// Controller for the [UserModel].
@riverpod
class UserController extends _$UserController {
  @override
  Stream<List<UserModel>> build() {
    final userService = ref.read(userServiceProvider);
    return userService.getUsersStream();
  }
}
