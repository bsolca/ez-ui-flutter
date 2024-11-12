// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_exercise_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutExerciseModel _$WorkoutExerciseModelFromJson(Map<String, dynamic> json) {
  return _WorkoutExerciseModel.fromJson(json);
}

/// @nodoc
mixin _$WorkoutExerciseModel {
  String get id =>
      throw _privateConstructorUsedError; // Unique identifier for the workout exercise
  String get exerciseId =>
      throw _privateConstructorUsedError; // Links to ExerciseModel by ID
  RepsModel? get reps =>
      throw _privateConstructorUsedError; // Optional repetitions information
  DurationModel? get duration =>
      throw _privateConstructorUsedError; // Optional duration for time-based exercises
  LoadModel? get load =>
      throw _privateConstructorUsedError; // Optional load or weight information
  DurationModel? get restTimeBetweenSets =>
      throw _privateConstructorUsedError; // Optional rest time between sets
  TempoModel? get tempo =>
      throw _privateConstructorUsedError; // Optional tempo information for the exercise
  DistanceModel? get distance =>
      throw _privateConstructorUsedError; // Optional distance information
  IntensityModel? get intensity =>
      throw _privateConstructorUsedError; // Optional intensity level information
  String? get customNotes => throw _privateConstructorUsedError;

  /// Serializes this WorkoutExerciseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutExerciseModelCopyWith<WorkoutExerciseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutExerciseModelCopyWith<$Res> {
  factory $WorkoutExerciseModelCopyWith(WorkoutExerciseModel value,
          $Res Function(WorkoutExerciseModel) then) =
      _$WorkoutExerciseModelCopyWithImpl<$Res, WorkoutExerciseModel>;
  @useResult
  $Res call(
      {String id,
      String exerciseId,
      RepsModel? reps,
      DurationModel? duration,
      LoadModel? load,
      DurationModel? restTimeBetweenSets,
      TempoModel? tempo,
      DistanceModel? distance,
      IntensityModel? intensity,
      String? customNotes});

  $RepsModelCopyWith<$Res>? get reps;
  $DurationModelCopyWith<$Res>? get duration;
  $LoadModelCopyWith<$Res>? get load;
  $DurationModelCopyWith<$Res>? get restTimeBetweenSets;
  $TempoModelCopyWith<$Res>? get tempo;
  $DistanceModelCopyWith<$Res>? get distance;
  $IntensityModelCopyWith<$Res>? get intensity;
}

/// @nodoc
class _$WorkoutExerciseModelCopyWithImpl<$Res,
        $Val extends WorkoutExerciseModel>
    implements $WorkoutExerciseModelCopyWith<$Res> {
  _$WorkoutExerciseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? exerciseId = null,
    Object? reps = freezed,
    Object? duration = freezed,
    Object? load = freezed,
    Object? restTimeBetweenSets = freezed,
    Object? tempo = freezed,
    Object? distance = freezed,
    Object? intensity = freezed,
    Object? customNotes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      reps: freezed == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsModel?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as DurationModel?,
      load: freezed == load
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as LoadModel?,
      restTimeBetweenSets: freezed == restTimeBetweenSets
          ? _value.restTimeBetweenSets
          : restTimeBetweenSets // ignore: cast_nullable_to_non_nullable
              as DurationModel?,
      tempo: freezed == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as TempoModel?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as DistanceModel?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as IntensityModel?,
      customNotes: freezed == customNotes
          ? _value.customNotes
          : customNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepsModelCopyWith<$Res>? get reps {
    if (_value.reps == null) {
      return null;
    }

    return $RepsModelCopyWith<$Res>(_value.reps!, (value) {
      return _then(_value.copyWith(reps: value) as $Val);
    });
  }

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DurationModelCopyWith<$Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $DurationModelCopyWith<$Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoadModelCopyWith<$Res>? get load {
    if (_value.load == null) {
      return null;
    }

    return $LoadModelCopyWith<$Res>(_value.load!, (value) {
      return _then(_value.copyWith(load: value) as $Val);
    });
  }

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DurationModelCopyWith<$Res>? get restTimeBetweenSets {
    if (_value.restTimeBetweenSets == null) {
      return null;
    }

    return $DurationModelCopyWith<$Res>(_value.restTimeBetweenSets!, (value) {
      return _then(_value.copyWith(restTimeBetweenSets: value) as $Val);
    });
  }

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TempoModelCopyWith<$Res>? get tempo {
    if (_value.tempo == null) {
      return null;
    }

    return $TempoModelCopyWith<$Res>(_value.tempo!, (value) {
      return _then(_value.copyWith(tempo: value) as $Val);
    });
  }

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceModelCopyWith<$Res>? get distance {
    if (_value.distance == null) {
      return null;
    }

    return $DistanceModelCopyWith<$Res>(_value.distance!, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
    });
  }

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntensityModelCopyWith<$Res>? get intensity {
    if (_value.intensity == null) {
      return null;
    }

    return $IntensityModelCopyWith<$Res>(_value.intensity!, (value) {
      return _then(_value.copyWith(intensity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkoutExerciseModelImplCopyWith<$Res>
    implements $WorkoutExerciseModelCopyWith<$Res> {
  factory _$$WorkoutExerciseModelImplCopyWith(_$WorkoutExerciseModelImpl value,
          $Res Function(_$WorkoutExerciseModelImpl) then) =
      __$$WorkoutExerciseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String exerciseId,
      RepsModel? reps,
      DurationModel? duration,
      LoadModel? load,
      DurationModel? restTimeBetweenSets,
      TempoModel? tempo,
      DistanceModel? distance,
      IntensityModel? intensity,
      String? customNotes});

  @override
  $RepsModelCopyWith<$Res>? get reps;
  @override
  $DurationModelCopyWith<$Res>? get duration;
  @override
  $LoadModelCopyWith<$Res>? get load;
  @override
  $DurationModelCopyWith<$Res>? get restTimeBetweenSets;
  @override
  $TempoModelCopyWith<$Res>? get tempo;
  @override
  $DistanceModelCopyWith<$Res>? get distance;
  @override
  $IntensityModelCopyWith<$Res>? get intensity;
}

/// @nodoc
class __$$WorkoutExerciseModelImplCopyWithImpl<$Res>
    extends _$WorkoutExerciseModelCopyWithImpl<$Res, _$WorkoutExerciseModelImpl>
    implements _$$WorkoutExerciseModelImplCopyWith<$Res> {
  __$$WorkoutExerciseModelImplCopyWithImpl(_$WorkoutExerciseModelImpl _value,
      $Res Function(_$WorkoutExerciseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? exerciseId = null,
    Object? reps = freezed,
    Object? duration = freezed,
    Object? load = freezed,
    Object? restTimeBetweenSets = freezed,
    Object? tempo = freezed,
    Object? distance = freezed,
    Object? intensity = freezed,
    Object? customNotes = freezed,
  }) {
    return _then(_$WorkoutExerciseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      reps: freezed == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as RepsModel?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as DurationModel?,
      load: freezed == load
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as LoadModel?,
      restTimeBetweenSets: freezed == restTimeBetweenSets
          ? _value.restTimeBetweenSets
          : restTimeBetweenSets // ignore: cast_nullable_to_non_nullable
              as DurationModel?,
      tempo: freezed == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as TempoModel?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as DistanceModel?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as IntensityModel?,
      customNotes: freezed == customNotes
          ? _value.customNotes
          : customNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutExerciseModelImpl implements _WorkoutExerciseModel {
  const _$WorkoutExerciseModelImpl(
      {required this.id,
      required this.exerciseId,
      this.reps,
      this.duration,
      this.load,
      this.restTimeBetweenSets,
      this.tempo,
      this.distance,
      this.intensity,
      this.customNotes});

  factory _$WorkoutExerciseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutExerciseModelImplFromJson(json);

  @override
  final String id;
// Unique identifier for the workout exercise
  @override
  final String exerciseId;
// Links to ExerciseModel by ID
  @override
  final RepsModel? reps;
// Optional repetitions information
  @override
  final DurationModel? duration;
// Optional duration for time-based exercises
  @override
  final LoadModel? load;
// Optional load or weight information
  @override
  final DurationModel? restTimeBetweenSets;
// Optional rest time between sets
  @override
  final TempoModel? tempo;
// Optional tempo information for the exercise
  @override
  final DistanceModel? distance;
// Optional distance information
  @override
  final IntensityModel? intensity;
// Optional intensity level information
  @override
  final String? customNotes;

  @override
  String toString() {
    return 'WorkoutExerciseModel(id: $id, exerciseId: $exerciseId, reps: $reps, duration: $duration, load: $load, restTimeBetweenSets: $restTimeBetweenSets, tempo: $tempo, distance: $distance, intensity: $intensity, customNotes: $customNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutExerciseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.load, load) || other.load == load) &&
            (identical(other.restTimeBetweenSets, restTimeBetweenSets) ||
                other.restTimeBetweenSets == restTimeBetweenSets) &&
            (identical(other.tempo, tempo) || other.tempo == tempo) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            (identical(other.customNotes, customNotes) ||
                other.customNotes == customNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, exerciseId, reps, duration,
      load, restTimeBetweenSets, tempo, distance, intensity, customNotes);

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutExerciseModelImplCopyWith<_$WorkoutExerciseModelImpl>
      get copyWith =>
          __$$WorkoutExerciseModelImplCopyWithImpl<_$WorkoutExerciseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutExerciseModelImplToJson(
      this,
    );
  }
}

abstract class _WorkoutExerciseModel implements WorkoutExerciseModel {
  const factory _WorkoutExerciseModel(
      {required final String id,
      required final String exerciseId,
      final RepsModel? reps,
      final DurationModel? duration,
      final LoadModel? load,
      final DurationModel? restTimeBetweenSets,
      final TempoModel? tempo,
      final DistanceModel? distance,
      final IntensityModel? intensity,
      final String? customNotes}) = _$WorkoutExerciseModelImpl;

  factory _WorkoutExerciseModel.fromJson(Map<String, dynamic> json) =
      _$WorkoutExerciseModelImpl.fromJson;

  @override
  String get id; // Unique identifier for the workout exercise
  @override
  String get exerciseId; // Links to ExerciseModel by ID
  @override
  RepsModel? get reps; // Optional repetitions information
  @override
  DurationModel? get duration; // Optional duration for time-based exercises
  @override
  LoadModel? get load; // Optional load or weight information
  @override
  DurationModel? get restTimeBetweenSets; // Optional rest time between sets
  @override
  TempoModel? get tempo; // Optional tempo information for the exercise
  @override
  DistanceModel? get distance; // Optional distance information
  @override
  IntensityModel? get intensity; // Optional intensity level information
  @override
  String? get customNotes;

  /// Create a copy of WorkoutExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutExerciseModelImplCopyWith<_$WorkoutExerciseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
