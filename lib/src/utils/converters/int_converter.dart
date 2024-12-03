// default_int_converter.dart
import 'package:json_annotation/json_annotation.dart';

class DefaultIntConverter implements JsonConverter<int, dynamic> {
  const DefaultIntConverter();

  @override
  int fromJson(dynamic json) {
    if (json == null) {
      // Provide the default value when the JSON value is null or missing
      return 0;
    } else if (json is int) {
      return json;
    } else {
      // Handle the case where the JSON value is not an integer
      throw FormatException('Invalid value for int: $json');
    }
  }

  @override
  dynamic toJson(int object) => object;
}
