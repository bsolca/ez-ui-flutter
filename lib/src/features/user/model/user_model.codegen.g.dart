// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      maidenName: json['maidenName'] as String?,
      age: (json['age'] as num).toInt(),
      gender: json['gender'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      birthDate: json['birthDate'] as String?,
      image: json['image'] as String?,
      bloodGroup: json['bloodGroup'] as String,
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      eyeColor: json['eyeColor'] as String,
      hair: HairModel.fromJson(json['hair'] as Map<String, dynamic>),
      ip: json['ip'] as String,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      macAddress: json['macAddress'] as String,
      university: json['university'] as String,
      bank: BankModel.fromJson(json['bank'] as Map<String, dynamic>),
      company: CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      ein: json['ein'] as String,
      ssn: json['ssn'] as String,
      userAgent: json['userAgent'] as String,
      crypto: CryptoModel.fromJson(json['crypto'] as Map<String, dynamic>),
      role: json['role'] as String? ?? 'user',
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
    _$HairModelImpl(
      color: json['color'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$HairModelImplToJson(_$HairModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'type': instance.type,
    };

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      stateCode: json['stateCode'] as String,
      postalCode: json['postalCode'] as String,
      coordinates: CoordinatesModel.fromJson(
          json['coordinates'] as Map<String, dynamic>),
      country: json['country'] as String,
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
    _$CoordinatesModelImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordinatesModelImplToJson(
        _$CoordinatesModelImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$BankModelImpl _$$BankModelImplFromJson(Map<String, dynamic> json) =>
    _$BankModelImpl(
      cardExpire: json['cardExpire'] as String,
      cardNumber: json['cardNumber'] as String,
      cardType: json['cardType'] as String,
      currency: json['currency'] as String,
      iban: json['iban'] as String,
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
    _$CompanyModelImpl(
      department: json['department'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'department': instance.department,
      'name': instance.name,
      'title': instance.title,
      'address': instance.address.toJson(),
    };

_$CryptoModelImpl _$$CryptoModelImplFromJson(Map<String, dynamic> json) =>
    _$CryptoModelImpl(
      coin: json['coin'] as String,
      wallet: json['wallet'] as String,
      network: json['network'] as String,
    );

Map<String, dynamic> _$$CryptoModelImplToJson(_$CryptoModelImpl instance) =>
    <String, dynamic>{
      'coin': instance.coin,
      'wallet': instance.wallet,
      'network': instance.network,
    };
