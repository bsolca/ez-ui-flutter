import 'package:ez_fit_app/src/utils/ez_toast/ez_toast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ez_event_controller.codegen.g.dart';

class EzEvent {
  const EzEvent({
    required this.type,
    required this.description,
  });

  const EzEvent.empty() : this(description: null, type: null);

  final EzEventType? type;
  final String? description;
}

@Riverpod(keepAlive: true)
class EzEventController extends _$EzEventController {
  @override
  Future<EzEvent> build() async {
    return const EzEvent.empty();
  }

  /// Reset the state to empty.
  Future<void> reset() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return const EzEvent.empty();
    });
  }

  /// Send success message to the user.
  Future<void> sendSuccessToast(String message) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return EzEvent(
        description: message,
        type: EzEventType.success,
      );
    });
  }

  /// Send error message to the user.
  Future<void> sendErrorToast(String message) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return EzEvent(
        description: message,
        type: EzEventType.error,
      );
    });
  }
}
