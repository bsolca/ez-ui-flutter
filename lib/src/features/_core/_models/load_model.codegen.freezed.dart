// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoadModel _$LoadModelFromJson(Map<String, dynamic> json) {
  return _LoadModel.fromJson(json);
}

/// @nodoc
mixin _$LoadModel {
  double get amount =>
      throw _privateConstructorUsedError; // Amount of weight or resistance
  @WeightUnitConverter()
  WeightUnit get unit => throw _privateConstructorUsedError;

  /// Serializes this LoadModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadModelCopyWith<LoadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadModelCopyWith<$Res> {
  factory $LoadModelCopyWith(LoadModel value, $Res Function(LoadModel) then) =
      _$LoadModelCopyWithImpl<$Res, LoadModel>;
  @useResult
  $Res call({double amount, @WeightUnitConverter() WeightUnit unit});
}

/// @nodoc
class _$LoadModelCopyWithImpl<$Res, $Val extends LoadModel>
    implements $LoadModelCopyWith<$Res> {
  _$LoadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadModelImplCopyWith<$Res>
    implements $LoadModelCopyWith<$Res> {
  factory _$$LoadModelImplCopyWith(
          _$LoadModelImpl value, $Res Function(_$LoadModelImpl) then) =
      __$$LoadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, @WeightUnitConverter() WeightUnit unit});
}

/// @nodoc
class __$$LoadModelImplCopyWithImpl<$Res>
    extends _$LoadModelCopyWithImpl<$Res, _$LoadModelImpl>
    implements _$$LoadModelImplCopyWith<$Res> {
  __$$LoadModelImplCopyWithImpl(
      _$LoadModelImpl _value, $Res Function(_$LoadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$LoadModelImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadModelImpl implements _LoadModel {
  const _$LoadModelImpl(
      {required this.amount, @WeightUnitConverter() required this.unit});

  factory _$LoadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadModelImplFromJson(json);

  @override
  final double amount;
// Amount of weight or resistance
  @override
  @WeightUnitConverter()
  final WeightUnit unit;

  @override
  String toString() {
    return 'LoadModel(amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unit);

  /// Create a copy of LoadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadModelImplCopyWith<_$LoadModelImpl> get copyWith =>
      __$$LoadModelImplCopyWithImpl<_$LoadModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadModelImplToJson(
      this,
    );
  }
}

abstract class _LoadModel implements LoadModel {
  const factory _LoadModel(
      {required final double amount,
      @WeightUnitConverter() required final WeightUnit unit}) = _$LoadModelImpl;

  factory _LoadModel.fromJson(Map<String, dynamic> json) =
      _$LoadModelImpl.fromJson;

  @override
  double get amount; // Amount of weight or resistance
  @override
  @WeightUnitConverter()
  WeightUnit get unit;

  /// Create a copy of LoadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadModelImplCopyWith<_$LoadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
