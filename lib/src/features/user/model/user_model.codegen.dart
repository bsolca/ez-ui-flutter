import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.codegen.freezed.dart';
part 'user_model.codegen.g.dart';

@freezed
/// Represents a user model with detailed user information.
class UserModel with _$UserModel {
  /// User model with detailed user information.
  const factory UserModel({
    required int id,
    required String firstName,
    required String lastName,
    String? maidenName,
    required int age,
    required String gender,
    required String email,
    required String phone,
    required String username,
    required String password,
    required String? birthDate,
    String? image,
    required String bloodGroup,
    required double height,
    required double weight,
    required String eyeColor,
    required HairModel hair,
    required String ip,
    required AddressModel address,
    required String macAddress,
    required String university,
    required BankModel bank,
    required CompanyModel company,
    required String ein,
    required String ssn,
    required String userAgent,
    required CryptoModel crypto,
    @Default('user') String role,
  }) = _UserModel;

  /// Creates a new user model from a JSON map.
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

/// Represents a hair model with color and type.
@freezed
class HairModel with _$HairModel {
  /// Hair model with color and type.
  const factory HairModel({
    required String color,
    required String type,
  }) = _HairModel;

  /// Creates a new hair model from a JSON map.
  factory HairModel.fromJson(Map<String, dynamic> json) =>
      _$HairModelFromJson(json);
}

/// Represents an address model with details.
@freezed
class AddressModel with _$AddressModel {
  /// Address model with details.
  const factory AddressModel({
    required String address,
    required String city,
    required String state,
    required String stateCode,
    required String postalCode,
    required CoordinatesModel coordinates,
    required String country,
  }) = _AddressModel;

  /// Creates a new address model from a JSON map.
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

/// Represents a coordinates model with latitude and longitude.
@freezed
class CoordinatesModel with _$CoordinatesModel {
  /// Coordinates model with latitude and longitude.
  const factory CoordinatesModel({
    required double lat,
    required double lng,
  }) = _CoordinatesModel;

  /// Creates a new coordinates model from a JSON map.
  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);
}

/// Represents a bank model with details.
@freezed
class BankModel with _$BankModel {
  /// Bank model with details.
  const factory BankModel({
    required String cardExpire,
    required String cardNumber,
    required String cardType,
    required String currency,
    required String iban,
  }) = _BankModel;

  /// Creates a new bank model from a JSON map.
  factory BankModel.fromJson(Map<String, dynamic> json) =>
      _$BankModelFromJson(json);
}

/// Represents a company model with details.
@freezed
class CompanyModel with _$CompanyModel {
  /// Company model with details.
  const factory CompanyModel({
    required String department,
    required String name,
    required String title,
    required AddressModel address,
  }) = _CompanyModel;

  /// Creates a new company model from a JSON map.
  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}

/// Represents a crypto model with details.
@freezed
class CryptoModel with _$CryptoModel {
  /// Crypto model with details.
  const factory CryptoModel({
    required String coin,
    required String wallet,
    required String network,
  }) = _CryptoModel;

  /// Creates a new crypto model from a JSON map.
  factory CryptoModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoModelFromJson(json);
}
