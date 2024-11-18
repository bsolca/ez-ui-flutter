// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutModel _$WorkoutModelFromJson(Map<String, dynamic> json) {
  return _WorkoutModel.fromJson(json);
}

/// @nodoc
mixin _$WorkoutModel {
  String get workoutId =>
      throw _privateConstructorUsedError; // Unique identifier for the workout
  String get name => throw _privateConstructorUsedError; // Name of the workout
  String? get description =>
      throw _privateConstructorUsedError; // Optional description for the workout
  List<String> get tags => throw _privateConstructorUsedError;

  /// Serializes this WorkoutModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutModelCopyWith<WorkoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutModelCopyWith<$Res> {
  factory $WorkoutModelCopyWith(
          WorkoutModel value, $Res Function(WorkoutModel) then) =
      _$WorkoutModelCopyWithImpl<$Res, WorkoutModel>;
  @useResult
  $Res call(
      {String workoutId, String name, String? description, List<String> tags});
}

/// @nodoc
class _$WorkoutModelCopyWithImpl<$Res, $Val extends WorkoutModel>
    implements $WorkoutModelCopyWith<$Res> {
  _$WorkoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutId = null,
    Object? name = null,
    Object? description = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
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
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutModelImplCopyWith<$Res>
    implements $WorkoutModelCopyWith<$Res> {
  factory _$$WorkoutModelImplCopyWith(
          _$WorkoutModelImpl value, $Res Function(_$WorkoutModelImpl) then) =
      __$$WorkoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String workoutId, String name, String? description, List<String> tags});
}

/// @nodoc
class __$$WorkoutModelImplCopyWithImpl<$Res>
    extends _$WorkoutModelCopyWithImpl<$Res, _$WorkoutModelImpl>
    implements _$$WorkoutModelImplCopyWith<$Res> {
  __$$WorkoutModelImplCopyWithImpl(
      _$WorkoutModelImpl _value, $Res Function(_$WorkoutModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutId = null,
    Object? name = null,
    Object? description = freezed,
    Object? tags = null,
  }) {
    return _then(_$WorkoutModelImpl(
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
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutModelImpl implements _WorkoutModel {
  const _$WorkoutModelImpl(
      {required this.workoutId,
      required this.name,
      required this.description,
      required final List<String> tags})
      : _tags = tags;

  factory _$WorkoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutModelImplFromJson(json);

  @override
  final String workoutId;
// Unique identifier for the workout
  @override
  final String name;
// Name of the workout
  @override
  final String? description;
// Optional description for the workout
  final List<String> _tags;
// Optional description for the workout
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'WorkoutModel(workoutId: $workoutId, name: $name, description: $description, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutModelImpl &&
            (identical(other.workoutId, workoutId) ||
                other.workoutId == workoutId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, workoutId, name, description,
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutModelImplCopyWith<_$WorkoutModelImpl> get copyWith =>
      __$$WorkoutModelImplCopyWithImpl<_$WorkoutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutModelImplToJson(
      this,
    );
  }
}

abstract class _WorkoutModel implements WorkoutModel {
  const factory _WorkoutModel(
      {required final String workoutId,
      required final String name,
      required final String? description,
      required final List<String> tags}) = _$WorkoutModelImpl;

  factory _WorkoutModel.fromJson(Map<String, dynamic> json) =
      _$WorkoutModelImpl.fromJson;

  @override
  String get workoutId; // Unique identifier for the workout
  @override
  String get name; // Name of the workout
  @override
  String? get description; // Optional description for the workout
  @override
  List<String> get tags;

  /// Create a copy of WorkoutModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutModelImplCopyWith<_$WorkoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
