// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reps_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepsModel _$RepsModelFromJson(Map<String, dynamic> json) {
  return _RepsModel.fromJson(json);
}

/// @nodoc
mixin _$RepsModel {
  int get count => throw _privateConstructorUsedError;

  /// Serializes this RepsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepsModelCopyWith<RepsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepsModelCopyWith<$Res> {
  factory $RepsModelCopyWith(RepsModel value, $Res Function(RepsModel) then) =
      _$RepsModelCopyWithImpl<$Res, RepsModel>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$RepsModelCopyWithImpl<$Res, $Val extends RepsModel>
    implements $RepsModelCopyWith<$Res> {
  _$RepsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepsModelImplCopyWith<$Res>
    implements $RepsModelCopyWith<$Res> {
  factory _$$RepsModelImplCopyWith(
          _$RepsModelImpl value, $Res Function(_$RepsModelImpl) then) =
      __$$RepsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$RepsModelImplCopyWithImpl<$Res>
    extends _$RepsModelCopyWithImpl<$Res, _$RepsModelImpl>
    implements _$$RepsModelImplCopyWith<$Res> {
  __$$RepsModelImplCopyWithImpl(
      _$RepsModelImpl _value, $Res Function(_$RepsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$RepsModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepsModelImpl implements _RepsModel {
  const _$RepsModelImpl({required this.count});

  factory _$RepsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepsModelImplFromJson(json);

  @override
  final int count;

  @override
  String toString() {
    return 'RepsModel(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepsModelImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of RepsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepsModelImplCopyWith<_$RepsModelImpl> get copyWith =>
      __$$RepsModelImplCopyWithImpl<_$RepsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepsModelImplToJson(
      this,
    );
  }
}

abstract class _RepsModel implements RepsModel {
  const factory _RepsModel({required final int count}) = _$RepsModelImpl;

  factory _RepsModel.fromJson(Map<String, dynamic> json) =
      _$RepsModelImpl.fromJson;

  @override
  int get count;

  /// Create a copy of RepsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepsModelImplCopyWith<_$RepsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
