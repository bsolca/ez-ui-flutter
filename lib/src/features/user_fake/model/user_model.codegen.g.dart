// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UserModelImpl',
      json,
      ($checkedConvert) {
        final val = _$UserModelImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          maidenName: $checkedConvert('maidenName', (v) => v as String?),
          age: $checkedConvert('age', (v) => (v as num).toInt()),
          gender: $checkedConvert('gender', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          birthDate: $checkedConvert('birthDate', (v) => v as String?),
          image: $checkedConvert('image', (v) => v as String?),
          bloodGroup: $checkedConvert('bloodGroup', (v) => v as String),
          height: $checkedConvert('height', (v) => (v as num).toDouble()),
          weight: $checkedConvert('weight', (v) => (v as num).toDouble()),
          eyeColor: $checkedConvert('eyeColor', (v) => v as String),
          hair: $checkedConvert(
              'hair', (v) => HairModel.fromJson(v as Map<String, dynamic>)),
          ip: $checkedConvert('ip', (v) => v as String),
          address: $checkedConvert('address',
              (v) => AddressModel.fromJson(v as Map<String, dynamic>)),
          macAddress: $checkedConvert('macAddress', (v) => v as String),
          university: $checkedConvert('university', (v) => v as String),
          bank: $checkedConvert(
              'bank', (v) => BankModel.fromJson(v as Map<String, dynamic>)),
          company: $checkedConvert('company',
              (v) => CompanyModel.fromJson(v as Map<String, dynamic>)),
          ein: $checkedConvert('ein', (v) => v as String),
          ssn: $checkedConvert('ssn', (v) => v as String),
          userAgent: $checkedConvert('userAgent', (v) => v as String),
          crypto: $checkedConvert(
              'crypto', (v) => CryptoModel.fromJson(v as Map<String, dynamic>)),
          role: $checkedConvert('role', (v) => v as String? ?? 'user'),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'maidenName': instance.maidenName,
      'age': instance.age,
      'gender': instance.gender,
      'email': instance.email,
      'phone': instance.phone,
      'username': instance.username,
      'password': instance.password,
      'birthDate': instance.birthDate,
      'image': instance.image,
      'bloodGroup': instance.bloodGroup,
      'height': instance.height,
      'weight': instance.weight,
      'eyeColor': instance.eyeColor,
      'hair': instance.hair.toJson(),
      'ip': instance.ip,
      'address': instance.address.toJson(),
      'macAddress': instance.macAddress,
      'university': instance.university,
      'bank': instance.bank.toJson(),
      'company': instance.company.toJson(),
      'ein': instance.ein,
      'ssn': instance.ssn,
      'userAgent': instance.userAgent,
      'crypto': instance.crypto.toJson(),
      'role': instance.role,
    };

_$HairModelImpl _$$HairModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$HairModelImpl',
      json,
      ($checkedConvert) {
        final val = _$HairModelImpl(
          color: $checkedConvert('color', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$HairModelImplToJson(_$HairModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'type': instance.type,
    };

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AddressModelImpl',
      json,
      ($checkedConvert) {
        final val = _$AddressModelImpl(
          address: $checkedConvert('address', (v) => v as String),
          city: $checkedConvert('city', (v) => v as String),
          state: $checkedConvert('state', (v) => v as String),
          stateCode: $checkedConvert('stateCode', (v) => v as String),
          postalCode: $checkedConvert('postalCode', (v) => v as String),
          coordinates: $checkedConvert('coordinates',
              (v) => CoordinatesModel.fromJson(v as Map<String, dynamic>)),
          country: $checkedConvert('country', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'stateCode': instance.stateCode,
      'postalCode': instance.postalCode,
      'coordinates': instance.coordinates.toJson(),
      'country': instance.country,
    };

_$CoordinatesModelImpl _$$CoordinatesModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CoordinatesModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CoordinatesModelImpl(
          lat: $checkedConvert('lat', (v) => (v as num).toDouble()),
          lng: $checkedConvert('lng', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CoordinatesModelImplToJson(
        _$CoordinatesModelImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$BankModelImpl _$$BankModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$BankModelImpl',
      json,
      ($checkedConvert) {
        final val = _$BankModelImpl(
          cardExpire: $checkedConvert('cardExpire', (v) => v as String),
          cardNumber: $checkedConvert('cardNumber', (v) => v as String),
          cardType: $checkedConvert('cardType', (v) => v as String),
          currency: $checkedConvert('currency', (v) => v as String),
          iban: $checkedConvert('iban', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BankModelImplToJson(_$BankModelImpl instance) =>
    <String, dynamic>{
      'cardExpire': instance.cardExpire,
      'cardNumber': instance.cardNumber,
      'cardType': instance.cardType,
      'currency': instance.currency,
      'iban': instance.iban,
    };

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CompanyModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CompanyModelImpl(
          department: $checkedConvert('department', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          address: $checkedConvert('address',
              (v) => AddressModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'department': instance.department,
      'name': instance.name,
      'title': instance.title,
      'address': instance.address.toJson(),
    };

_$CryptoModelImpl _$$CryptoModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CryptoModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CryptoModelImpl(
          coin: $checkedConvert('coin', (v) => v as String),
          wallet: $checkedConvert('wallet', (v) => v as String),
          network: $checkedConvert('network', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CryptoModelImplToJson(_$CryptoModelImpl instance) =>
    <String, dynamic>{
      'coin': instance.coin,
      'wallet': instance.wallet,
      'network': instance.network,
    };
