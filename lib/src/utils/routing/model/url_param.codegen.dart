import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_param.codegen.freezed.dart';

/// Holding the type (single or multi) and the id of the game.
@freezed
class UrlParams with _$UrlParams {
  /// Holding the type (single or multi) and the id of the game.
  const factory UrlParams({
    required bool isOnline,
    required String id,
  }) = _UrlParams;

  /// Create an empty instance with null values.
  factory UrlParams.empty() => const UrlParams(isOnline: true, id: '');
}
