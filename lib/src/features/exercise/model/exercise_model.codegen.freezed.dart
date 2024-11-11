// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) {
  return _ExerciseModel.fromJson(json);
}

/// @nodoc
mixin _$ExerciseModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this ExerciseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseModelCopyWith<ExerciseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseModelCopyWith<$Res> {
  factory $ExerciseModelCopyWith(
          ExerciseModel value, $Res Function(ExerciseModel) then) =
      _$ExerciseModelCopyWithImpl<$Res, ExerciseModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? imageUrl,
      String? videoUrl,
      List<String> tags,
      String description});
}

/// @nodoc
class _$ExerciseModelCopyWithImpl<$Res, $Val extends ExerciseModel>
    implements $ExerciseModelCopyWith<$Res> {
  _$ExerciseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? tags = null,
    Object? description = null,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseModelImplCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$$ExerciseModelImplCopyWith(
          _$ExerciseModelImpl value, $Res Function(_$ExerciseModelImpl) then) =
      __$$ExerciseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? imageUrl,
      String? videoUrl,
      List<String> tags,
      String description});
}

/// @nodoc
class __$$ExerciseModelImplCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res, _$ExerciseModelImpl>
    implements _$$ExerciseModelImplCopyWith<$Res> {
  __$$ExerciseModelImplCopyWithImpl(
      _$ExerciseModelImpl _value, $Res Function(_$ExerciseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? tags = null,
    Object? description = null,
  }) {
    return _then(_$ExerciseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseModelImpl implements _ExerciseModel {
  const _$ExerciseModelImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.videoUrl,
      required final List<String> tags,
      required this.description})
      : _tags = tags;

  factory _$ExerciseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? imageUrl;
  @override
  final String? videoUrl;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String description;

  @override
  String toString() {
    return 'ExerciseModel(id: $id, name: $name, imageUrl: $imageUrl, videoUrl: $videoUrl, tags: $tags, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl, videoUrl,
      const DeepCollectionEquality().hash(_tags), description);

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseModelImplCopyWith<_$ExerciseModelImpl> get copyWith =>
      __$$ExerciseModelImplCopyWithImpl<_$ExerciseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseModelImplToJson(
      this,
    );
  }
}

abstract class _ExerciseModel implements ExerciseModel {
  const factory _ExerciseModel(
      {required final String id,
      required final String name,
      required final String? imageUrl,
      required final String? videoUrl,
      required final List<String> tags,
      required final String description}) = _$ExerciseModelImpl;

  factory _ExerciseModel.fromJson(Map<String, dynamic> json) =
      _$ExerciseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  String? get videoUrl;
  @override
  List<String> get tags;
  @override
  String get description;

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseModelImplCopyWith<_$ExerciseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
