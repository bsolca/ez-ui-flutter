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
  String get id =>
      throw _privateConstructorUsedError; // Unique identifier for the step
  String get name =>
      throw _privateConstructorUsedError; // Name of the step, e.g., "Round 1"
  String? get description =>
      throw _privateConstructorUsedError; // Optional description for this step
  int get setCount =>
      throw _privateConstructorUsedError; // Number of times to repeat this step
  DurationModel? get restTime =>
      throw _privateConstructorUsedError; // Optional rest time after completing this step
  List<String> get workoutExerciseIds => throw _privateConstructorUsedError;

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
      String name,
      String? description,
      int setCount,
      DurationModel? restTime,
      List<String> workoutExerciseIds});

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
    Object? name = null,
    Object? description = freezed,
    Object? setCount = null,
    Object? restTime = freezed,
    Object? workoutExerciseIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      setCount: null == setCount
          ? _value.setCount
          : setCount // ignore: cast_nullable_to_non_nullable
              as int,
      restTime: freezed == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as DurationModel?,
      workoutExerciseIds: null == workoutExerciseIds
          ? _value.workoutExerciseIds
          : workoutExerciseIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      String name,
      String? description,
      int setCount,
      DurationModel? restTime,
      List<String> workoutExerciseIds});

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
    Object? name = null,
    Object? description = freezed,
    Object? setCount = null,
    Object? restTime = freezed,
    Object? workoutExerciseIds = null,
  }) {
    return _then(_$WorkoutStepModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      setCount: null == setCount
          ? _value.setCount
          : setCount // ignore: cast_nullable_to_non_nullable
              as int,
      restTime: freezed == restTime
          ? _value.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as DurationModel?,
      workoutExerciseIds: null == workoutExerciseIds
          ? _value._workoutExerciseIds
          : workoutExerciseIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutStepModelImpl implements _WorkoutStepModel {
  const _$WorkoutStepModelImpl(
      {required this.id,
      required this.name,
      this.description,
      required this.setCount,
      this.restTime,
      required final List<String> workoutExerciseIds})
      : _workoutExerciseIds = workoutExerciseIds;

  factory _$WorkoutStepModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutStepModelImplFromJson(json);

  @override
  final String id;
// Unique identifier for the step
  @override
  final String name;
// Name of the step, e.g., "Round 1"
  @override
  final String? description;
// Optional description for this step
  @override
  final int setCount;
// Number of times to repeat this step
  @override
  final DurationModel? restTime;
// Optional rest time after completing this step
  final List<String> _workoutExerciseIds;
// Optional rest time after completing this step
  @override
  List<String> get workoutExerciseIds {
    if (_workoutExerciseIds is EqualUnmodifiableListView)
      return _workoutExerciseIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutExerciseIds);
  }

  @override
  String toString() {
    return 'WorkoutStepModel(id: $id, name: $name, description: $description, setCount: $setCount, restTime: $restTime, workoutExerciseIds: $workoutExerciseIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutStepModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.setCount, setCount) ||
                other.setCount == setCount) &&
            (identical(other.restTime, restTime) ||
                other.restTime == restTime) &&
            const DeepCollectionEquality()
                .equals(other._workoutExerciseIds, _workoutExerciseIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, setCount,
      restTime, const DeepCollectionEquality().hash(_workoutExerciseIds));

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
      required final String name,
      final String? description,
      required final int setCount,
      final DurationModel? restTime,
      required final List<String> workoutExerciseIds}) = _$WorkoutStepModelImpl;

  factory _WorkoutStepModel.fromJson(Map<String, dynamic> json) =
      _$WorkoutStepModelImpl.fromJson;

  @override
  String get id; // Unique identifier for the step
  @override
  String get name; // Name of the step, e.g., "Round 1"
  @override
  String? get description; // Optional description for this step
  @override
  int get setCount; // Number of times to repeat this step
  @override
  DurationModel? get restTime; // Optional rest time after completing this step
  @override
  List<String> get workoutExerciseIds;

  /// Create a copy of WorkoutStepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutStepModelImplCopyWith<_$WorkoutStepModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
