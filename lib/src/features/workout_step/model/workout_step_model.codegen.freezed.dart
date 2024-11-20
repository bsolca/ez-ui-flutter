// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_step_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutStepModel _$WorkoutStepModelFromJson(Map<String, dynamic> json) {
  return _WorkoutStepModel.fromJson(json);
}

/// @nodoc
mixin _$WorkoutStepModel {
  String get id => throw _privateConstructorUsedError;
  String get workoutId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get setCount => throw _privateConstructorUsedError;
  DurationModel? get restTime => throw _privateConstructorUsedError;

  /// Serializes this WorkoutStepModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutStepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutStepModelCopyWith<WorkoutStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutStepModelCopyWith<$Res> {
  factory $WorkoutStepModelCopyWith(
          WorkoutStepModel value, $Res Function(WorkoutStepModel) then) =
      _$WorkoutStepModelCopyWithImpl<$Res, WorkoutStepModel>;
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String name,
      String? description,
      int? setCount,
      DurationModel? restTime});

  $DurationModelCopyWith<$Res>? get restTime;
}

/// @nodoc
class _$WorkoutStepModelCopyWithImpl<$Res, $Val extends WorkoutStepModel>
    implements $WorkoutStepModelCopyWith<$Res> {
  _$WorkoutStepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutStepModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? name = null,
    Object? description = freezed,
    Object? setCount = freezed,
    Object? restTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      setCount: freezed == setCount
          ? _value.setCount
          : setCount // ignore: cast_nullable_to_non_nullable
              as int?,
      restTime: freezed == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as DurationModel?,
    ) as $Val);
  }

  /// Create a copy of WorkoutStepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DurationModelCopyWith<$Res>? get restTime {
    if (_value.restTime == null) {
      return null;
    }

    return $DurationModelCopyWith<$Res>(_value.restTime!, (value) {
      return _then(_value.copyWith(restTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkoutStepModelImplCopyWith<$Res>
    implements $WorkoutStepModelCopyWith<$Res> {
  factory _$$WorkoutStepModelImplCopyWith(_$WorkoutStepModelImpl value,
          $Res Function(_$WorkoutStepModelImpl) then) =
      __$$WorkoutStepModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String workoutId,
      String name,
      String? description,
      int? setCount,
      DurationModel? restTime});

  @override
  $DurationModelCopyWith<$Res>? get restTime;
}

/// @nodoc
class __$$WorkoutStepModelImplCopyWithImpl<$Res>
    extends _$WorkoutStepModelCopyWithImpl<$Res, _$WorkoutStepModelImpl>
    implements _$$WorkoutStepModelImplCopyWith<$Res> {
  __$$WorkoutStepModelImplCopyWithImpl(_$WorkoutStepModelImpl _value,
      $Res Function(_$WorkoutStepModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutStepModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workoutId = null,
    Object? name = null,
    Object? description = freezed,
    Object? setCount = freezed,
    Object? restTime = freezed,
  }) {
    return _then(_$WorkoutStepModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workoutId: null == workoutId
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      setCount: freezed == setCount
          ? _value.setCount
          : setCount // ignore: cast_nullable_to_non_nullable
              as int?,
      restTime: freezed == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as DurationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutStepModelImpl implements _WorkoutStepModel {
  const _$WorkoutStepModelImpl(
      {required this.id,
      required this.workoutId,
      required this.name,
      required this.description,
      required this.setCount,
      required this.restTime});

  factory _$WorkoutStepModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutStepModelImplFromJson(json);

  @override
  final String id;
  @override
  final String workoutId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final int? setCount;
  @override
  final DurationModel? restTime;

  @override
  String toString() {
    return 'WorkoutStepModel(id: $id, workoutId: $workoutId, name: $name, description: $description, setCount: $setCount, restTime: $restTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutStepModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.setCount, setCount) ||
                other.setCount == setCount) &&
            (identical(other.restTime, restTime) ||
                other.restTime == restTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, workoutId, name, description, setCount, restTime);

  /// Create a copy of WorkoutStepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutStepModelImplCopyWith<_$WorkoutStepModelImpl> get copyWith =>
      __$$WorkoutStepModelImplCopyWithImpl<_$WorkoutStepModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutStepModelImplToJson(
      this,
    );
  }
}

abstract class _WorkoutStepModel implements WorkoutStepModel {
  const factory _WorkoutStepModel(
      {required final String id,
      required final String workoutId,
      required final String name,
      required final String? description,
      required final int? setCount,
      required final DurationModel? restTime}) = _$WorkoutStepModelImpl;

  factory _WorkoutStepModel.fromJson(Map<String, dynamic> json) =
      _$WorkoutStepModelImpl.fromJson;

  @override
  String get id;
  @override
  String get workoutId;
  @override
  String get name;
  @override
  String? get description;
  @override
  int? get setCount;
  @override
  DurationModel? get restTime;

  /// Create a copy of WorkoutStepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutStepModelImplCopyWith<_$WorkoutStepModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
