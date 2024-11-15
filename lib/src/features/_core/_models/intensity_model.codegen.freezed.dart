// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intensity_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IntensityModel _$IntensityModelFromJson(Map<String, dynamic> json) {
  return _IntensityModel.fromJson(json);
}

/// @nodoc
mixin _$IntensityModel {
  @IntensityTypeConverter()
  IntensityType get type => throw _privateConstructorUsedError;
  @DefaultIntConverter()
  int get value => throw _privateConstructorUsedError;

  /// Serializes this IntensityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntensityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntensityModelCopyWith<IntensityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntensityModelCopyWith<$Res> {
  factory $IntensityModelCopyWith(
          IntensityModel value, $Res Function(IntensityModel) then) =
      _$IntensityModelCopyWithImpl<$Res, IntensityModel>;
  @useResult
  $Res call(
      {@IntensityTypeConverter() IntensityType type,
      @DefaultIntConverter() int value});
}

/// @nodoc
class _$IntensityModelCopyWithImpl<$Res, $Val extends IntensityModel>
    implements $IntensityModelCopyWith<$Res> {
  _$IntensityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntensityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IntensityType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntensityModelImplCopyWith<$Res>
    implements $IntensityModelCopyWith<$Res> {
  factory _$$IntensityModelImplCopyWith(_$IntensityModelImpl value,
          $Res Function(_$IntensityModelImpl) then) =
      __$$IntensityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@IntensityTypeConverter() IntensityType type,
      @DefaultIntConverter() int value});
}

/// @nodoc
class __$$IntensityModelImplCopyWithImpl<$Res>
    extends _$IntensityModelCopyWithImpl<$Res, _$IntensityModelImpl>
    implements _$$IntensityModelImplCopyWith<$Res> {
  __$$IntensityModelImplCopyWithImpl(
      _$IntensityModelImpl _value, $Res Function(_$IntensityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntensityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$IntensityModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IntensityType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntensityModelImpl implements _IntensityModel {
  const _$IntensityModelImpl(
      {@IntensityTypeConverter() required this.type,
      @DefaultIntConverter() required this.value});

  factory _$IntensityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntensityModelImplFromJson(json);

  @override
  @IntensityTypeConverter()
  final IntensityType type;
  @override
  @DefaultIntConverter()
  final int value;

  @override
  String toString() {
    return 'IntensityModel(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntensityModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  /// Create a copy of IntensityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntensityModelImplCopyWith<_$IntensityModelImpl> get copyWith =>
      __$$IntensityModelImplCopyWithImpl<_$IntensityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntensityModelImplToJson(
      this,
    );
  }
}

abstract class _IntensityModel implements IntensityModel {
  const factory _IntensityModel(
      {@IntensityTypeConverter() required final IntensityType type,
      @DefaultIntConverter() required final int value}) = _$IntensityModelImpl;

  factory _IntensityModel.fromJson(Map<String, dynamic> json) =
      _$IntensityModelImpl.fromJson;

  @override
  @IntensityTypeConverter()
  IntensityType get type;
  @override
  @DefaultIntConverter()
  int get value;

  /// Create a copy of IntensityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntensityModelImplCopyWith<_$IntensityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
