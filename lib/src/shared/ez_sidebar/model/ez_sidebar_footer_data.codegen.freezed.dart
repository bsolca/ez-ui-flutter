// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ez_sidebar_footer_data.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EzSidebarFooterData {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  VoidCallback get onTap => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Create a copy of EzSidebarFooterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EzSidebarFooterDataCopyWith<EzSidebarFooterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EzSidebarFooterDataCopyWith<$Res> {
  factory $EzSidebarFooterDataCopyWith(
          EzSidebarFooterData value, $Res Function(EzSidebarFooterData) then) =
      _$EzSidebarFooterDataCopyWithImpl<$Res, EzSidebarFooterData>;
  @useResult
  $Res call({String name, String email, VoidCallback onTap, String? avatarUrl});
}

/// @nodoc
class _$EzSidebarFooterDataCopyWithImpl<$Res, $Val extends EzSidebarFooterData>
    implements $EzSidebarFooterDataCopyWith<$Res> {
  _$EzSidebarFooterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EzSidebarFooterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? onTap = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EzSidebarFooterDataImplCopyWith<$Res>
    implements $EzSidebarFooterDataCopyWith<$Res> {
  factory _$$EzSidebarFooterDataImplCopyWith(_$EzSidebarFooterDataImpl value,
          $Res Function(_$EzSidebarFooterDataImpl) then) =
      __$$EzSidebarFooterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, VoidCallback onTap, String? avatarUrl});
}

/// @nodoc
class __$$EzSidebarFooterDataImplCopyWithImpl<$Res>
    extends _$EzSidebarFooterDataCopyWithImpl<$Res, _$EzSidebarFooterDataImpl>
    implements _$$EzSidebarFooterDataImplCopyWith<$Res> {
  __$$EzSidebarFooterDataImplCopyWithImpl(_$EzSidebarFooterDataImpl _value,
      $Res Function(_$EzSidebarFooterDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EzSidebarFooterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? onTap = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$EzSidebarFooterDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EzSidebarFooterDataImpl implements _EzSidebarFooterData {
  const _$EzSidebarFooterDataImpl(
      {required this.name,
      required this.email,
      required this.onTap,
      this.avatarUrl});

  @override
  final String name;
  @override
  final String email;
  @override
  final VoidCallback onTap;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'EzSidebarFooterData(name: $name, email: $email, onTap: $onTap, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EzSidebarFooterDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, onTap, avatarUrl);

  /// Create a copy of EzSidebarFooterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EzSidebarFooterDataImplCopyWith<_$EzSidebarFooterDataImpl> get copyWith =>
      __$$EzSidebarFooterDataImplCopyWithImpl<_$EzSidebarFooterDataImpl>(
          this, _$identity);
}

abstract class _EzSidebarFooterData implements EzSidebarFooterData {
  const factory _EzSidebarFooterData(
      {required final String name,
      required final String email,
      required final VoidCallback onTap,
      final String? avatarUrl}) = _$EzSidebarFooterDataImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  VoidCallback get onTap;
  @override
  String? get avatarUrl;

  /// Create a copy of EzSidebarFooterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EzSidebarFooterDataImplCopyWith<_$EzSidebarFooterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
