// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_param.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UrlParams {
  bool get isOnline => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Create a copy of UrlParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrlParamsCopyWith<UrlParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlParamsCopyWith<$Res> {
  factory $UrlParamsCopyWith(UrlParams value, $Res Function(UrlParams) then) =
      _$UrlParamsCopyWithImpl<$Res, UrlParams>;
  @useResult
  $Res call({bool isOnline, String id});
}

/// @nodoc
class _$UrlParamsCopyWithImpl<$Res, $Val extends UrlParams>
    implements $UrlParamsCopyWith<$Res> {
  _$UrlParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UrlParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlParamsImplCopyWith<$Res>
    implements $UrlParamsCopyWith<$Res> {
  factory _$$UrlParamsImplCopyWith(
          _$UrlParamsImpl value, $Res Function(_$UrlParamsImpl) then) =
      __$$UrlParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOnline, String id});
}

/// @nodoc
class __$$UrlParamsImplCopyWithImpl<$Res>
    extends _$UrlParamsCopyWithImpl<$Res, _$UrlParamsImpl>
    implements _$$UrlParamsImplCopyWith<$Res> {
  __$$UrlParamsImplCopyWithImpl(
      _$UrlParamsImpl _value, $Res Function(_$UrlParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UrlParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
    Object? id = null,
  }) {
    return _then(_$UrlParamsImpl(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UrlParamsImpl implements _UrlParams {
  const _$UrlParamsImpl({required this.isOnline, required this.id});

  @override
  final bool isOnline;
  @override
  final String id;

  @override
  String toString() {
    return 'UrlParams(isOnline: $isOnline, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlParamsImpl &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOnline, id);

  /// Create a copy of UrlParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlParamsImplCopyWith<_$UrlParamsImpl> get copyWith =>
      __$$UrlParamsImplCopyWithImpl<_$UrlParamsImpl>(this, _$identity);
}

abstract class _UrlParams implements UrlParams {
  const factory _UrlParams(
      {required final bool isOnline,
      required final String id}) = _$UrlParamsImpl;

  @override
  bool get isOnline;
  @override
  String get id;

  /// Create a copy of UrlParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlParamsImplCopyWith<_$UrlParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
