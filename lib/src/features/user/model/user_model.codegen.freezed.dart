// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get maidenName => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get bloodGroup => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  String get eyeColor => throw _privateConstructorUsedError;
  HairModel get hair => throw _privateConstructorUsedError;
  String get ip => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;
  String get macAddress => throw _privateConstructorUsedError;
  String get university => throw _privateConstructorUsedError;
  BankModel get bank => throw _privateConstructorUsedError;
  CompanyModel get company => throw _privateConstructorUsedError;
  String get ein => throw _privateConstructorUsedError;
  String get ssn => throw _privateConstructorUsedError;
  String get userAgent => throw _privateConstructorUsedError;
  CryptoModel get crypto => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String? maidenName,
      int age,
      String gender,
      String email,
      String phone,
      String username,
      String password,
      String? birthDate,
      String? image,
      String bloodGroup,
      double height,
      double weight,
      String eyeColor,
      HairModel hair,
      String ip,
      AddressModel address,
      String macAddress,
      String university,
      BankModel bank,
      CompanyModel company,
      String ein,
      String ssn,
      String userAgent,
      CryptoModel crypto,
      String role});

  $HairModelCopyWith<$Res> get hair;
  $AddressModelCopyWith<$Res> get address;
  $BankModelCopyWith<$Res> get bank;
  $CompanyModelCopyWith<$Res> get company;
  $CryptoModelCopyWith<$Res> get crypto;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? maidenName = freezed,
    Object? age = null,
    Object? gender = null,
    Object? email = null,
    Object? phone = null,
    Object? username = null,
    Object? password = null,
    Object? birthDate = freezed,
    Object? image = freezed,
    Object? bloodGroup = null,
    Object? height = null,
    Object? weight = null,
    Object? eyeColor = null,
    Object? hair = null,
    Object? ip = null,
    Object? address = null,
    Object? macAddress = null,
    Object? university = null,
    Object? bank = null,
    Object? company = null,
    Object? ein = null,
    Object? ssn = null,
    Object? userAgent = null,
    Object? crypto = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      maidenName: freezed == maidenName
          ? _value.maidenName
          : maidenName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodGroup: null == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      eyeColor: null == eyeColor
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String,
      hair: null == hair
          ? _value.hair
          : hair // ignore: cast_nullable_to_non_nullable
              as HairModel,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel,
      ein: null == ein
          ? _value.ein
          : ein // ignore: cast_nullable_to_non_nullable
              as String,
      ssn: null == ssn
          ? _value.ssn
          : ssn // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      crypto: null == crypto
          ? _value.crypto
          : crypto // ignore: cast_nullable_to_non_nullable
              as CryptoModel,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HairModelCopyWith<$Res> get hair {
    return $HairModelCopyWith<$Res>(_value.hair, (value) {
      return _then(_value.copyWith(hair: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res> get bank {
    return $BankModelCopyWith<$Res>(_value.bank, (value) {
      return _then(_value.copyWith(bank: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyModelCopyWith<$Res> get company {
    return $CompanyModelCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CryptoModelCopyWith<$Res> get crypto {
    return $CryptoModelCopyWith<$Res>(_value.crypto, (value) {
      return _then(_value.copyWith(crypto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String? maidenName,
      int age,
      String gender,
      String email,
      String phone,
      String username,
      String password,
      String? birthDate,
      String? image,
      String bloodGroup,
      double height,
      double weight,
      String eyeColor,
      HairModel hair,
      String ip,
      AddressModel address,
      String macAddress,
      String university,
      BankModel bank,
      CompanyModel company,
      String ein,
      String ssn,
      String userAgent,
      CryptoModel crypto,
      String role});

  @override
  $HairModelCopyWith<$Res> get hair;
  @override
  $AddressModelCopyWith<$Res> get address;
  @override
  $BankModelCopyWith<$Res> get bank;
  @override
  $CompanyModelCopyWith<$Res> get company;
  @override
  $CryptoModelCopyWith<$Res> get crypto;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? maidenName = freezed,
    Object? age = null,
    Object? gender = null,
    Object? email = null,
    Object? phone = null,
    Object? username = null,
    Object? password = null,
    Object? birthDate = freezed,
    Object? image = freezed,
    Object? bloodGroup = null,
    Object? height = null,
    Object? weight = null,
    Object? eyeColor = null,
    Object? hair = null,
    Object? ip = null,
    Object? address = null,
    Object? macAddress = null,
    Object? university = null,
    Object? bank = null,
    Object? company = null,
    Object? ein = null,
    Object? ssn = null,
    Object? userAgent = null,
    Object? crypto = null,
    Object? role = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      maidenName: freezed == maidenName
          ? _value.maidenName
          : maidenName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      bloodGroup: null == bloodGroup
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      eyeColor: null == eyeColor
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String,
      hair: null == hair
          ? _value.hair
          : hair // ignore: cast_nullable_to_non_nullable
              as HairModel,
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankModel,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyModel,
      ein: null == ein
          ? _value.ein
          : ein // ignore: cast_nullable_to_non_nullable
              as String,
      ssn: null == ssn
          ? _value.ssn
          : ssn // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      crypto: null == crypto
          ? _value.crypto
          : crypto // ignore: cast_nullable_to_non_nullable
              as CryptoModel,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      this.maidenName,
      required this.age,
      required this.gender,
      required this.email,
      required this.phone,
      required this.username,
      required this.password,
      required this.birthDate,
      this.image,
      required this.bloodGroup,
      required this.height,
      required this.weight,
      required this.eyeColor,
      required this.hair,
      required this.ip,
      required this.address,
      required this.macAddress,
      required this.university,
      required this.bank,
      required this.company,
      required this.ein,
      required this.ssn,
      required this.userAgent,
      required this.crypto,
      this.role = 'user'});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? maidenName;
  @override
  final int age;
  @override
  final String gender;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String username;
  @override
  final String password;
  @override
  final String? birthDate;
  @override
  final String? image;
  @override
  final String bloodGroup;
  @override
  final double height;
  @override
  final double weight;
  @override
  final String eyeColor;
  @override
  final HairModel hair;
  @override
  final String ip;
  @override
  final AddressModel address;
  @override
  final String macAddress;
  @override
  final String university;
  @override
  final BankModel bank;
  @override
  final CompanyModel company;
  @override
  final String ein;
  @override
  final String ssn;
  @override
  final String userAgent;
  @override
  final CryptoModel crypto;
  @override
  @JsonKey()
  final String role;

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, ip: $ip, address: $address, macAddress: $macAddress, university: $university, bank: $bank, company: $company, ein: $ein, ssn: $ssn, userAgent: $userAgent, crypto: $crypto, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.maidenName, maidenName) ||
                other.maidenName == maidenName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.bloodGroup, bloodGroup) ||
                other.bloodGroup == bloodGroup) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.eyeColor, eyeColor) ||
                other.eyeColor == eyeColor) &&
            (identical(other.hair, hair) || other.hair == hair) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.ein, ein) || other.ein == ein) &&
            (identical(other.ssn, ssn) || other.ssn == ssn) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.crypto, crypto) || other.crypto == crypto) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        maidenName,
        age,
        gender,
        email,
        phone,
        username,
        password,
        birthDate,
        image,
        bloodGroup,
        height,
        weight,
        eyeColor,
        hair,
        ip,
        address,
        macAddress,
        university,
        bank,
        company,
        ein,
        ssn,
        userAgent,
        crypto,
        role
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final int id,
      required final String firstName,
      required final String lastName,
      final String? maidenName,
      required final int age,
      required final String gender,
      required final String email,
      required final String phone,
      required final String username,
      required final String password,
      required final String? birthDate,
      final String? image,
      required final String bloodGroup,
      required final double height,
      required final double weight,
      required final String eyeColor,
      required final HairModel hair,
      required final String ip,
      required final AddressModel address,
      required final String macAddress,
      required final String university,
      required final BankModel bank,
      required final CompanyModel company,
      required final String ein,
      required final String ssn,
      required final String userAgent,
      required final CryptoModel crypto,
      final String role}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get maidenName;
  @override
  int get age;
  @override
  String get gender;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get username;
  @override
  String get password;
  @override
  String? get birthDate;
  @override
  String? get image;
  @override
  String get bloodGroup;
  @override
  double get height;
  @override
  double get weight;
  @override
  String get eyeColor;
  @override
  HairModel get hair;
  @override
  String get ip;
  @override
  AddressModel get address;
  @override
  String get macAddress;
  @override
  String get university;
  @override
  BankModel get bank;
  @override
  CompanyModel get company;
  @override
  String get ein;
  @override
  String get ssn;
  @override
  String get userAgent;
  @override
  CryptoModel get crypto;
  @override
  String get role;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HairModel _$HairModelFromJson(Map<String, dynamic> json) {
  return _HairModel.fromJson(json);
}

/// @nodoc
mixin _$HairModel {
  String get color => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this HairModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HairModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HairModelCopyWith<HairModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HairModelCopyWith<$Res> {
  factory $HairModelCopyWith(HairModel value, $Res Function(HairModel) then) =
      _$HairModelCopyWithImpl<$Res, HairModel>;
  @useResult
  $Res call({String color, String type});
}

/// @nodoc
class _$HairModelCopyWithImpl<$Res, $Val extends HairModel>
    implements $HairModelCopyWith<$Res> {
  _$HairModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HairModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HairModelImplCopyWith<$Res>
    implements $HairModelCopyWith<$Res> {
  factory _$$HairModelImplCopyWith(
          _$HairModelImpl value, $Res Function(_$HairModelImpl) then) =
      __$$HairModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String color, String type});
}

/// @nodoc
class __$$HairModelImplCopyWithImpl<$Res>
    extends _$HairModelCopyWithImpl<$Res, _$HairModelImpl>
    implements _$$HairModelImplCopyWith<$Res> {
  __$$HairModelImplCopyWithImpl(
      _$HairModelImpl _value, $Res Function(_$HairModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HairModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? type = null,
  }) {
    return _then(_$HairModelImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HairModelImpl implements _HairModel {
  const _$HairModelImpl({required this.color, required this.type});

  factory _$HairModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HairModelImplFromJson(json);

  @override
  final String color;
  @override
  final String type;

  @override
  String toString() {
    return 'HairModel(color: $color, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HairModelImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color, type);

  /// Create a copy of HairModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HairModelImplCopyWith<_$HairModelImpl> get copyWith =>
      __$$HairModelImplCopyWithImpl<_$HairModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HairModelImplToJson(
      this,
    );
  }
}

abstract class _HairModel implements HairModel {
  const factory _HairModel(
      {required final String color,
      required final String type}) = _$HairModelImpl;

  factory _HairModel.fromJson(Map<String, dynamic> json) =
      _$HairModelImpl.fromJson;

  @override
  String get color;
  @override
  String get type;

  /// Create a copy of HairModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HairModelImplCopyWith<_$HairModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get stateCode => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  CoordinatesModel get coordinates => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {String address,
      String city,
      String state,
      String stateCode,
      String postalCode,
      CoordinatesModel coordinates,
      String country});

  $CoordinatesModelCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? stateCode = null,
    Object? postalCode = null,
    Object? coordinates = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesModel,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinatesModelCopyWith<$Res> get coordinates {
    return $CoordinatesModelCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
          _$AddressModelImpl value, $Res Function(_$AddressModelImpl) then) =
      __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String city,
      String state,
      String stateCode,
      String postalCode,
      CoordinatesModel coordinates,
      String country});

  @override
  $CoordinatesModelCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
      _$AddressModelImpl _value, $Res Function(_$AddressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? stateCode = null,
    Object? postalCode = null,
    Object? coordinates = null,
    Object? country = null,
  }) {
    return _then(_$AddressModelImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as CoordinatesModel,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  const _$AddressModelImpl(
      {required this.address,
      required this.city,
      required this.state,
      required this.stateCode,
      required this.postalCode,
      required this.coordinates,
      required this.country});

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  final String address;
  @override
  final String city;
  @override
  final String state;
  @override
  final String stateCode;
  @override
  final String postalCode;
  @override
  final CoordinatesModel coordinates;
  @override
  final String country;

  @override
  String toString() {
    return 'AddressModel(address: $address, city: $city, state: $state, stateCode: $stateCode, postalCode: $postalCode, coordinates: $coordinates, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, city, state, stateCode,
      postalCode, coordinates, country);

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
      {required final String address,
      required final String city,
      required final String state,
      required final String stateCode,
      required final String postalCode,
      required final CoordinatesModel coordinates,
      required final String country}) = _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  String get address;
  @override
  String get city;
  @override
  String get state;
  @override
  String get stateCode;
  @override
  String get postalCode;
  @override
  CoordinatesModel get coordinates;
  @override
  String get country;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoordinatesModel _$CoordinatesModelFromJson(Map<String, dynamic> json) {
  return _CoordinatesModel.fromJson(json);
}

/// @nodoc
mixin _$CoordinatesModel {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  /// Serializes this CoordinatesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinatesModelCopyWith<CoordinatesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesModelCopyWith<$Res> {
  factory $CoordinatesModelCopyWith(
          CoordinatesModel value, $Res Function(CoordinatesModel) then) =
      _$CoordinatesModelCopyWithImpl<$Res, CoordinatesModel>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$CoordinatesModelCopyWithImpl<$Res, $Val extends CoordinatesModel>
    implements $CoordinatesModelCopyWith<$Res> {
  _$CoordinatesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinatesModelImplCopyWith<$Res>
    implements $CoordinatesModelCopyWith<$Res> {
  factory _$$CoordinatesModelImplCopyWith(_$CoordinatesModelImpl value,
          $Res Function(_$CoordinatesModelImpl) then) =
      __$$CoordinatesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$CoordinatesModelImplCopyWithImpl<$Res>
    extends _$CoordinatesModelCopyWithImpl<$Res, _$CoordinatesModelImpl>
    implements _$$CoordinatesModelImplCopyWith<$Res> {
  __$$CoordinatesModelImplCopyWithImpl(_$CoordinatesModelImpl _value,
      $Res Function(_$CoordinatesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$CoordinatesModelImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinatesModelImpl implements _CoordinatesModel {
  const _$CoordinatesModelImpl({required this.lat, required this.lng});

  factory _$CoordinatesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatesModelImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'CoordinatesModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesModelImplCopyWith<_$CoordinatesModelImpl> get copyWith =>
      __$$CoordinatesModelImplCopyWithImpl<_$CoordinatesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatesModelImplToJson(
      this,
    );
  }
}

abstract class _CoordinatesModel implements CoordinatesModel {
  const factory _CoordinatesModel(
      {required final double lat,
      required final double lng}) = _$CoordinatesModelImpl;

  factory _CoordinatesModel.fromJson(Map<String, dynamic> json) =
      _$CoordinatesModelImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;

  /// Create a copy of CoordinatesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatesModelImplCopyWith<_$CoordinatesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BankModel _$BankModelFromJson(Map<String, dynamic> json) {
  return _BankModel.fromJson(json);
}

/// @nodoc
mixin _$BankModel {
  String get cardExpire => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get cardType => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get iban => throw _privateConstructorUsedError;

  /// Serializes this BankModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankModelCopyWith<BankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankModelCopyWith<$Res> {
  factory $BankModelCopyWith(BankModel value, $Res Function(BankModel) then) =
      _$BankModelCopyWithImpl<$Res, BankModel>;
  @useResult
  $Res call(
      {String cardExpire,
      String cardNumber,
      String cardType,
      String currency,
      String iban});
}

/// @nodoc
class _$BankModelCopyWithImpl<$Res, $Val extends BankModel>
    implements $BankModelCopyWith<$Res> {
  _$BankModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardExpire = null,
    Object? cardNumber = null,
    Object? cardType = null,
    Object? currency = null,
    Object? iban = null,
  }) {
    return _then(_value.copyWith(
      cardExpire: null == cardExpire
          ? _value.cardExpire
          : cardExpire // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      iban: null == iban
          ? _value.iban
          : iban // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankModelImplCopyWith<$Res>
    implements $BankModelCopyWith<$Res> {
  factory _$$BankModelImplCopyWith(
          _$BankModelImpl value, $Res Function(_$BankModelImpl) then) =
      __$$BankModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardExpire,
      String cardNumber,
      String cardType,
      String currency,
      String iban});
}

/// @nodoc
class __$$BankModelImplCopyWithImpl<$Res>
    extends _$BankModelCopyWithImpl<$Res, _$BankModelImpl>
    implements _$$BankModelImplCopyWith<$Res> {
  __$$BankModelImplCopyWithImpl(
      _$BankModelImpl _value, $Res Function(_$BankModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardExpire = null,
    Object? cardNumber = null,
    Object? cardType = null,
    Object? currency = null,
    Object? iban = null,
  }) {
    return _then(_$BankModelImpl(
      cardExpire: null == cardExpire
          ? _value.cardExpire
          : cardExpire // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      iban: null == iban
          ? _value.iban
          : iban // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankModelImpl implements _BankModel {
  const _$BankModelImpl(
      {required this.cardExpire,
      required this.cardNumber,
      required this.cardType,
      required this.currency,
      required this.iban});

  factory _$BankModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankModelImplFromJson(json);

  @override
  final String cardExpire;
  @override
  final String cardNumber;
  @override
  final String cardType;
  @override
  final String currency;
  @override
  final String iban;

  @override
  String toString() {
    return 'BankModel(cardExpire: $cardExpire, cardNumber: $cardNumber, cardType: $cardType, currency: $currency, iban: $iban)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankModelImpl &&
            (identical(other.cardExpire, cardExpire) ||
                other.cardExpire == cardExpire) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.iban, iban) || other.iban == iban));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, cardExpire, cardNumber, cardType, currency, iban);

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankModelImplCopyWith<_$BankModelImpl> get copyWith =>
      __$$BankModelImplCopyWithImpl<_$BankModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankModelImplToJson(
      this,
    );
  }
}

abstract class _BankModel implements BankModel {
  const factory _BankModel(
      {required final String cardExpire,
      required final String cardNumber,
      required final String cardType,
      required final String currency,
      required final String iban}) = _$BankModelImpl;

  factory _BankModel.fromJson(Map<String, dynamic> json) =
      _$BankModelImpl.fromJson;

  @override
  String get cardExpire;
  @override
  String get cardNumber;
  @override
  String get cardType;
  @override
  String get currency;
  @override
  String get iban;

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankModelImplCopyWith<_$BankModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) {
  return _CompanyModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyModel {
  String get department => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
          CompanyModel value, $Res Function(CompanyModel) then) =
      _$CompanyModelCopyWithImpl<$Res, CompanyModel>;
  @useResult
  $Res call(
      {String department, String name, String title, AddressModel address});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res, $Val extends CompanyModel>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
    Object? name = null,
    Object? title = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ) as $Val);
  }

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyModelImplCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$$CompanyModelImplCopyWith(
          _$CompanyModelImpl value, $Res Function(_$CompanyModelImpl) then) =
      __$$CompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String department, String name, String title, AddressModel address});

  @override
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$CompanyModelImplCopyWithImpl<$Res>
    extends _$CompanyModelCopyWithImpl<$Res, _$CompanyModelImpl>
    implements _$$CompanyModelImplCopyWith<$Res> {
  __$$CompanyModelImplCopyWithImpl(
      _$CompanyModelImpl _value, $Res Function(_$CompanyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
    Object? name = null,
    Object? title = null,
    Object? address = null,
  }) {
    return _then(_$CompanyModelImpl(
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyModelImpl implements _CompanyModel {
  const _$CompanyModelImpl(
      {required this.department,
      required this.name,
      required this.title,
      required this.address});

  factory _$CompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyModelImplFromJson(json);

  @override
  final String department;
  @override
  final String name;
  @override
  final String title;
  @override
  final AddressModel address;

  @override
  String toString() {
    return 'CompanyModel(department: $department, name: $name, title: $title, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyModelImpl &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, department, name, title, address);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      __$$CompanyModelImplCopyWithImpl<_$CompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyModelImplToJson(
      this,
    );
  }
}

abstract class _CompanyModel implements CompanyModel {
  const factory _CompanyModel(
      {required final String department,
      required final String name,
      required final String title,
      required final AddressModel address}) = _$CompanyModelImpl;

  factory _CompanyModel.fromJson(Map<String, dynamic> json) =
      _$CompanyModelImpl.fromJson;

  @override
  String get department;
  @override
  String get name;
  @override
  String get title;
  @override
  AddressModel get address;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CryptoModel _$CryptoModelFromJson(Map<String, dynamic> json) {
  return _CryptoModel.fromJson(json);
}

/// @nodoc
mixin _$CryptoModel {
  String get coin => throw _privateConstructorUsedError;
  String get wallet => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;

  /// Serializes this CryptoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoModelCopyWith<CryptoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoModelCopyWith<$Res> {
  factory $CryptoModelCopyWith(
          CryptoModel value, $Res Function(CryptoModel) then) =
      _$CryptoModelCopyWithImpl<$Res, CryptoModel>;
  @useResult
  $Res call({String coin, String wallet, String network});
}

/// @nodoc
class _$CryptoModelCopyWithImpl<$Res, $Val extends CryptoModel>
    implements $CryptoModelCopyWith<$Res> {
  _$CryptoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = null,
    Object? wallet = null,
    Object? network = null,
  }) {
    return _then(_value.copyWith(
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoModelImplCopyWith<$Res>
    implements $CryptoModelCopyWith<$Res> {
  factory _$$CryptoModelImplCopyWith(
          _$CryptoModelImpl value, $Res Function(_$CryptoModelImpl) then) =
      __$$CryptoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String coin, String wallet, String network});
}

/// @nodoc
class __$$CryptoModelImplCopyWithImpl<$Res>
    extends _$CryptoModelCopyWithImpl<$Res, _$CryptoModelImpl>
    implements _$$CryptoModelImplCopyWith<$Res> {
  __$$CryptoModelImplCopyWithImpl(
      _$CryptoModelImpl _value, $Res Function(_$CryptoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = null,
    Object? wallet = null,
    Object? network = null,
  }) {
    return _then(_$CryptoModelImpl(
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoModelImpl implements _CryptoModel {
  const _$CryptoModelImpl(
      {required this.coin, required this.wallet, required this.network});

  factory _$CryptoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoModelImplFromJson(json);

  @override
  final String coin;
  @override
  final String wallet;
  @override
  final String network;

  @override
  String toString() {
    return 'CryptoModel(coin: $coin, wallet: $wallet, network: $network)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoModelImpl &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.network, network) || other.network == network));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coin, wallet, network);

  /// Create a copy of CryptoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoModelImplCopyWith<_$CryptoModelImpl> get copyWith =>
      __$$CryptoModelImplCopyWithImpl<_$CryptoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoModelImplToJson(
      this,
    );
  }
}

abstract class _CryptoModel implements CryptoModel {
  const factory _CryptoModel(
      {required final String coin,
      required final String wallet,
      required final String network}) = _$CryptoModelImpl;

  factory _CryptoModel.fromJson(Map<String, dynamic> json) =
      _$CryptoModelImpl.fromJson;

  @override
  String get coin;
  @override
  String get wallet;
  @override
  String get network;

  /// Create a copy of CryptoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoModelImplCopyWith<_$CryptoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
