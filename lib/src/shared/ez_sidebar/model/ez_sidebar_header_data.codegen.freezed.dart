// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ez_sidebar_header_data.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EzSidebarHeaderData {
  String get appName => throw _privateConstructorUsedError;
  VoidCallback get onTap => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  List<EzSidebarPopoverItemData> get items =>
      throw _privateConstructorUsedError;

  /// Create a copy of EzSidebarHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EzSidebarHeaderDataCopyWith<EzSidebarHeaderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EzSidebarHeaderDataCopyWith<$Res> {
  factory $EzSidebarHeaderDataCopyWith(
          EzSidebarHeaderData value, $Res Function(EzSidebarHeaderData) then) =
      _$EzSidebarHeaderDataCopyWithImpl<$Res, EzSidebarHeaderData>;
  @useResult
  $Res call(
      {String appName,
      VoidCallback onTap,
      String? avatarUrl,
      List<EzSidebarPopoverItemData> items});
}

/// @nodoc
class _$EzSidebarHeaderDataCopyWithImpl<$Res, $Val extends EzSidebarHeaderData>
    implements $EzSidebarHeaderDataCopyWith<$Res> {
  _$EzSidebarHeaderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EzSidebarHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? onTap = null,
    Object? avatarUrl = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EzSidebarPopoverItemData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EzSidebarHeaderDataImplCopyWith<$Res>
    implements $EzSidebarHeaderDataCopyWith<$Res> {
  factory _$$EzSidebarHeaderDataImplCopyWith(_$EzSidebarHeaderDataImpl value,
          $Res Function(_$EzSidebarHeaderDataImpl) then) =
      __$$EzSidebarHeaderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appName,
      VoidCallback onTap,
      String? avatarUrl,
      List<EzSidebarPopoverItemData> items});
}

/// @nodoc
class __$$EzSidebarHeaderDataImplCopyWithImpl<$Res>
    extends _$EzSidebarHeaderDataCopyWithImpl<$Res, _$EzSidebarHeaderDataImpl>
    implements _$$EzSidebarHeaderDataImplCopyWith<$Res> {
  __$$EzSidebarHeaderDataImplCopyWithImpl(_$EzSidebarHeaderDataImpl _value,
      $Res Function(_$EzSidebarHeaderDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EzSidebarHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? onTap = null,
    Object? avatarUrl = freezed,
    Object? items = null,
  }) {
    return _then(_$EzSidebarHeaderDataImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EzSidebarPopoverItemData>,
    ));
  }
}

/// @nodoc

class _$EzSidebarHeaderDataImpl implements _EzSidebarHeaderData {
  const _$EzSidebarHeaderDataImpl(
      {required this.appName,
      required this.onTap,
      required this.avatarUrl,
      required final List<EzSidebarPopoverItemData> items})
      : _items = items;

  @override
  final String appName;
  @override
  final VoidCallback onTap;
  @override
  final String? avatarUrl;
  final List<EzSidebarPopoverItemData> _items;
  @override
  List<EzSidebarPopoverItemData> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'EzSidebarHeaderData(appName: $appName, onTap: $onTap, avatarUrl: $avatarUrl, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EzSidebarHeaderDataImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appName, onTap, avatarUrl,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of EzSidebarHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EzSidebarHeaderDataImplCopyWith<_$EzSidebarHeaderDataImpl> get copyWith =>
      __$$EzSidebarHeaderDataImplCopyWithImpl<_$EzSidebarHeaderDataImpl>(
          this, _$identity);
}

abstract class _EzSidebarHeaderData implements EzSidebarHeaderData {
  const factory _EzSidebarHeaderData(
          {required final String appName,
          required final VoidCallback onTap,
          required final String? avatarUrl,
          required final List<EzSidebarPopoverItemData> items}) =
      _$EzSidebarHeaderDataImpl;

  @override
  String get appName;
  @override
  VoidCallback get onTap;
  @override
  String? get avatarUrl;
  @override
  List<EzSidebarPopoverItemData> get items;

  /// Create a copy of EzSidebarHeaderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EzSidebarHeaderDataImplCopyWith<_$EzSidebarHeaderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
