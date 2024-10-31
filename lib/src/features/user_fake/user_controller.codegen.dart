
import 'package:ez_fit_app/src/features/user_fake/model/user_model.codegen.dart';
import 'package:ez_fit_app/src/features/user_fake/service/user_service.codegen.dart';
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
