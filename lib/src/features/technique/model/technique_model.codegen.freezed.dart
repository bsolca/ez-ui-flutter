// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'technique_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TechniqueModel _$TechniqueModelFromJson(Map<String, dynamic> json) {
  return _TechniqueModel.fromJson(json);
}

/// @nodoc
mixin _$TechniqueModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this TechniqueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TechniqueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TechniqueModelCopyWith<TechniqueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechniqueModelCopyWith<$Res> {
  factory $TechniqueModelCopyWith(
          TechniqueModel value, $Res Function(TechniqueModel) then) =
      _$TechniqueModelCopyWithImpl<$Res, TechniqueModel>;
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
class _$TechniqueModelCopyWithImpl<$Res, $Val extends TechniqueModel>
    implements $TechniqueModelCopyWith<$Res> {
  _$TechniqueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TechniqueModel
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
abstract class _$$TechniqueModelImplCopyWith<$Res>
    implements $TechniqueModelCopyWith<$Res> {
  factory _$$TechniqueModelImplCopyWith(_$TechniqueModelImpl value,
          $Res Function(_$TechniqueModelImpl) then) =
      __$$TechniqueModelImplCopyWithImpl<$Res>;
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
class __$$TechniqueModelImplCopyWithImpl<$Res>
    extends _$TechniqueModelCopyWithImpl<$Res, _$TechniqueModelImpl>
    implements _$$TechniqueModelImplCopyWith<$Res> {
  __$$TechniqueModelImplCopyWithImpl(
      _$TechniqueModelImpl _value, $Res Function(_$TechniqueModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TechniqueModel
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
    return _then(_$TechniqueModelImpl(
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
class _$TechniqueModelImpl implements _TechniqueModel {
  const _$TechniqueModelImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.videoUrl,
      required final List<String> tags,
      required this.description})
      : _tags = tags;

  factory _$TechniqueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TechniqueModelImplFromJson(json);

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
    return 'TechniqueModel(id: $id, name: $name, imageUrl: $imageUrl, videoUrl: $videoUrl, tags: $tags, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechniqueModelImpl &&
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

  /// Create a copy of TechniqueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TechniqueModelImplCopyWith<_$TechniqueModelImpl> get copyWith =>
      __$$TechniqueModelImplCopyWithImpl<_$TechniqueModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TechniqueModelImplToJson(
      this,
    );
  }
}

abstract class _TechniqueModel implements TechniqueModel {
  const factory _TechniqueModel(
      {required final String id,
      required final String name,
      required final String? imageUrl,
      required final String? videoUrl,
      required final List<String> tags,
      required final String description}) = _$TechniqueModelImpl;

  factory _TechniqueModel.fromJson(Map<String, dynamic> json) =
      _$TechniqueModelImpl.fromJson;

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

  /// Create a copy of TechniqueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TechniqueModelImplCopyWith<_$TechniqueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
