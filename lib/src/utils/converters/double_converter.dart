// default_double_converter.dart
import 'package:json_annotation/json_annotation.dart';

class DefaultDoubleConverter implements JsonConverter<double, dynamic> {
  const DefaultDoubleConverter();

  @override
  double fromJson(dynamic json) {
    if (json == null) {
      return 0; // Default value
    } else if (json is num) {
      return json.toDouble();
    } else {
      throw FormatException('Invalid value for double: $json');
    }
  }

  @override
  dynamic toJson(double object) => object;
}
