import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_settings.codegen.freezed.dart';
part 'game_settings.codegen.g.dart';

/// Game settings.
@freezed
class GameSettings with _$GameSettings {
  /// Game settings.
  const factory GameSettings({
    required int numberParties,
    required int numberRounds,
  }) = _GameSettings;

  /// Factory named constructor with defaukt values.
  factory GameSettings.defaults() => const GameSettings(
        numberParties: 3,
        numberRounds: 2,
      );

  /// Create a new instance from JSON.
  factory GameSettings.fromJson(Map<String, dynamic> json) =>
      _$GameSettingsFromJson(json);
}
