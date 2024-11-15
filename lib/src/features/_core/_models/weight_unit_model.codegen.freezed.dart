// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_unit_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeightUnitModel _$WeightUnitModelFromJson(Map<String, dynamic> json) {
  return _WeightUnitModel.fromJson(json);
}

/// @nodoc
mixin _$WeightUnitModel {
  @WeightUnitConverter()
  WeightUnit get unit => throw _privateConstructorUsedError;

  /// Serializes this WeightUnitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeightUnitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeightUnitModelCopyWith<WeightUnitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightUnitModelCopyWith<$Res> {
  factory $WeightUnitModelCopyWith(
          WeightUnitModel value, $Res Function(WeightUnitModel) then) =
      _$WeightUnitModelCopyWithImpl<$Res, WeightUnitModel>;
  @useResult
  $Res call({@WeightUnitConverter() WeightUnit unit});
}

/// @nodoc
class _$WeightUnitModelCopyWithImpl<$Res, $Val extends WeightUnitModel>
    implements $WeightUnitModelCopyWith<$Res> {
  _$WeightUnitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeightUnitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeightUnitModelImplCopyWith<$Res>
    implements $WeightUnitModelCopyWith<$Res> {
  factory _$$WeightUnitModelImplCopyWith(_$WeightUnitModelImpl value,
          $Res Function(_$WeightUnitModelImpl) then) =
      __$$WeightUnitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@WeightUnitConverter() WeightUnit unit});
}

/// @nodoc
class __$$WeightUnitModelImplCopyWithImpl<$Res>
    extends _$WeightUnitModelCopyWithImpl<$Res, _$WeightUnitModelImpl>
    implements _$$WeightUnitModelImplCopyWith<$Res> {
  __$$WeightUnitModelImplCopyWithImpl(
      _$WeightUnitModelImpl _value, $Res Function(_$WeightUnitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeightUnitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
  }) {
    return _then(_$WeightUnitModelImpl(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeightUnitModelImpl implements _WeightUnitModel {
  const _$WeightUnitModelImpl({@WeightUnitConverter() required this.unit});

  factory _$WeightUnitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightUnitModelImplFromJson(json);

  @override
  @WeightUnitConverter()
  final WeightUnit unit;

  @override
  String toString() {
    return 'WeightUnitModel(unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightUnitModelImpl &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unit);

  /// Create a copy of WeightUnitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightUnitModelImplCopyWith<_$WeightUnitModelImpl> get copyWith =>
      __$$WeightUnitModelImplCopyWithImpl<_$WeightUnitModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightUnitModelImplToJson(
      this,
    );
  }
}

abstract class _WeightUnitModel implements WeightUnitModel {
  const factory _WeightUnitModel(
          {@WeightUnitConverter() required final WeightUnit unit}) =
      _$WeightUnitModelImpl;

  factory _WeightUnitModel.fromJson(Map<String, dynamic> json) =
      _$WeightUnitModelImpl.fromJson;

  @override
  @WeightUnitConverter()
  WeightUnit get unit;

  /// Create a copy of WeightUnitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeightUnitModelImplCopyWith<_$WeightUnitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
