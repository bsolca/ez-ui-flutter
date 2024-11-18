// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_form_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkoutFormModel {
  WorkoutModel get workout => throw _privateConstructorUsedError;
  List<WorkoutStepModel> get workoutSteps => throw _privateConstructorUsedError;
  List<WorkoutExerciseModel> get workoutExercises =>
      throw _privateConstructorUsedError;

  /// Create a copy of WorkoutFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutFormModelCopyWith<WorkoutFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutFormModelCopyWith<$Res> {
  factory $WorkoutFormModelCopyWith(
          WorkoutFormModel value, $Res Function(WorkoutFormModel) then) =
      _$WorkoutFormModelCopyWithImpl<$Res, WorkoutFormModel>;
  @useResult
  $Res call(
      {WorkoutModel workout,
      List<WorkoutStepModel> workoutSteps,
      List<WorkoutExerciseModel> workoutExercises});

  $WorkoutModelCopyWith<$Res> get workout;
}

/// @nodoc
class _$WorkoutFormModelCopyWithImpl<$Res, $Val extends WorkoutFormModel>
    implements $WorkoutFormModelCopyWith<$Res> {
  _$WorkoutFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
    Object? workoutSteps = null,
    Object? workoutExercises = null,
  }) {
    return _then(_value.copyWith(
      workout: null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as WorkoutModel,
      workoutSteps: null == workoutSteps
          ? _value.workoutSteps
          : workoutSteps // ignore: cast_nullable_to_non_nullable
              as List<WorkoutStepModel>,
      workoutExercises: null == workoutExercises
          ? _value.workoutExercises
          : workoutExercises // ignore: cast_nullable_to_non_nullable
              as List<WorkoutExerciseModel>,
    ) as $Val);
  }

  /// Create a copy of WorkoutFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutModelCopyWith<$Res> get workout {
    return $WorkoutModelCopyWith<$Res>(_value.workout, (value) {
      return _then(_value.copyWith(workout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkoutFormModelImplCopyWith<$Res>
    implements $WorkoutFormModelCopyWith<$Res> {
  factory _$$WorkoutFormModelImplCopyWith(_$WorkoutFormModelImpl value,
          $Res Function(_$WorkoutFormModelImpl) then) =
      __$$WorkoutFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WorkoutModel workout,
      List<WorkoutStepModel> workoutSteps,
      List<WorkoutExerciseModel> workoutExercises});

  @override
  $WorkoutModelCopyWith<$Res> get workout;
}

/// @nodoc
class __$$WorkoutFormModelImplCopyWithImpl<$Res>
    extends _$WorkoutFormModelCopyWithImpl<$Res, _$WorkoutFormModelImpl>
    implements _$$WorkoutFormModelImplCopyWith<$Res> {
  __$$WorkoutFormModelImplCopyWithImpl(_$WorkoutFormModelImpl _value,
      $Res Function(_$WorkoutFormModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
    Object? workoutSteps = null,
    Object? workoutExercises = null,
  }) {
    return _then(_$WorkoutFormModelImpl(
      workout: null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as WorkoutModel,
      workoutSteps: null == workoutSteps
          ? _value._workoutSteps
          : workoutSteps // ignore: cast_nullable_to_non_nullable
              as List<WorkoutStepModel>,
      workoutExercises: null == workoutExercises
          ? _value._workoutExercises
          : workoutExercises // ignore: cast_nullable_to_non_nullable
              as List<WorkoutExerciseModel>,
    ));
  }
}

/// @nodoc

class _$WorkoutFormModelImpl implements _WorkoutFormModel {
  const _$WorkoutFormModelImpl(
      {required this.workout,
      required final List<WorkoutStepModel> workoutSteps,
      required final List<WorkoutExerciseModel> workoutExercises})
      : _workoutSteps = workoutSteps,
        _workoutExercises = workoutExercises;

  @override
  final WorkoutModel workout;
  final List<WorkoutStepModel> _workoutSteps;
  @override
  List<WorkoutStepModel> get workoutSteps {
    if (_workoutSteps is EqualUnmodifiableListView) return _workoutSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutSteps);
  }

  final List<WorkoutExerciseModel> _workoutExercises;
  @override
  List<WorkoutExerciseModel> get workoutExercises {
    if (_workoutExercises is EqualUnmodifiableListView)
      return _workoutExercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutExercises);
  }

  @override
  String toString() {
    return 'WorkoutFormModel(workout: $workout, workoutSteps: $workoutSteps, workoutExercises: $workoutExercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutFormModelImpl &&
            (identical(other.workout, workout) || other.workout == workout) &&
            const DeepCollectionEquality()
                .equals(other._workoutSteps, _workoutSteps) &&
            const DeepCollectionEquality()
                .equals(other._workoutExercises, _workoutExercises));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      workout,
      const DeepCollectionEquality().hash(_workoutSteps),
      const DeepCollectionEquality().hash(_workoutExercises));

  /// Create a copy of WorkoutFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutFormModelImplCopyWith<_$WorkoutFormModelImpl> get copyWith =>
      __$$WorkoutFormModelImplCopyWithImpl<_$WorkoutFormModelImpl>(
          this, _$identity);
}

abstract class _WorkoutFormModel implements WorkoutFormModel {
  const factory _WorkoutFormModel(
          {required final WorkoutModel workout,
          required final List<WorkoutStepModel> workoutSteps,
          required final List<WorkoutExerciseModel> workoutExercises}) =
      _$WorkoutFormModelImpl;

  @override
  WorkoutModel get workout;
  @override
  List<WorkoutStepModel> get workoutSteps;
  @override
  List<WorkoutExerciseModel> get workoutExercises;

  /// Create a copy of WorkoutFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutFormModelImplCopyWith<_$WorkoutFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
