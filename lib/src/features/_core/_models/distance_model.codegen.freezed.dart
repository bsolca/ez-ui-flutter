// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distance_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistanceModel _$DistanceModelFromJson(Map<String, dynamic> json) {
  return _DistanceModel.fromJson(json);
}

/// @nodoc
mixin _$DistanceModel {
  double get value => throw _privateConstructorUsedError; // Distance value
  DistanceUnit get unit => throw _privateConstructorUsedError;

  /// Serializes this DistanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DistanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistanceModelCopyWith<DistanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceModelCopyWith<$Res> {
  factory $DistanceModelCopyWith(
          DistanceModel value, $Res Function(DistanceModel) then) =
      _$DistanceModelCopyWithImpl<$Res, DistanceModel>;
  @useResult
  $Res call({double value, DistanceUnit unit});
}

/// @nodoc
class _$DistanceModelCopyWithImpl<$Res, $Val extends DistanceModel>
    implements $DistanceModelCopyWith<$Res> {
  _$DistanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as DistanceUnit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistanceModelImplCopyWith<$Res>
    implements $DistanceModelCopyWith<$Res> {
  factory _$$DistanceModelImplCopyWith(
          _$DistanceModelImpl value, $Res Function(_$DistanceModelImpl) then) =
      __$$DistanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, DistanceUnit unit});
}

/// @nodoc
class __$$DistanceModelImplCopyWithImpl<$Res>
    extends _$DistanceModelCopyWithImpl<$Res, _$DistanceModelImpl>
    implements _$$DistanceModelImplCopyWith<$Res> {
  __$$DistanceModelImplCopyWithImpl(
      _$DistanceModelImpl _value, $Res Function(_$DistanceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DistanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_$DistanceModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as DistanceUnit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistanceModelImpl implements _DistanceModel {
  const _$DistanceModelImpl({required this.value, required this.unit});

  factory _$DistanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistanceModelImplFromJson(json);

  @override
  final double value;
// Distance value
  @override
  final DistanceUnit unit;

  @override
  String toString() {
    return 'DistanceModel(value: $value, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistanceModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, unit);

  /// Create a copy of DistanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistanceModelImplCopyWith<_$DistanceModelImpl> get copyWith =>
      __$$DistanceModelImplCopyWithImpl<_$DistanceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistanceModelImplToJson(
      this,
    );
  }
}

abstract class _DistanceModel implements DistanceModel {
  const factory _DistanceModel(
      {required final double value,
      required final DistanceUnit unit}) = _$DistanceModelImpl;

  factory _DistanceModel.fromJson(Map<String, dynamic> json) =
      _$DistanceModelImpl.fromJson;

  @override
  double get value; // Distance value
  @override
  DistanceUnit get unit;

  /// Create a copy of DistanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistanceModelImplCopyWith<_$DistanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
