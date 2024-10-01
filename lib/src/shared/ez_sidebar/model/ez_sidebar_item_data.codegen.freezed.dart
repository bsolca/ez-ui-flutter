// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ez_sidebar_item_data.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EzSidebarItemData {
  /// The text label of the sidebar item.
  String get text => throw _privateConstructorUsedError;

  /// The path to the SVG icon asset.
  String get iconPath => throw _privateConstructorUsedError;

  /// onTap VoidCallback
  VoidCallback get onTap => throw _privateConstructorUsedError;

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EzSidebarItemDataCopyWith<EzSidebarItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EzSidebarItemDataCopyWith<$Res> {
  factory $EzSidebarItemDataCopyWith(
          EzSidebarItemData value, $Res Function(EzSidebarItemData) then) =
      _$EzSidebarItemDataCopyWithImpl<$Res, EzSidebarItemData>;
  @useResult
  $Res call({String text, String iconPath, VoidCallback onTap});
}

/// @nodoc
class _$EzSidebarItemDataCopyWithImpl<$Res, $Val extends EzSidebarItemData>
    implements $EzSidebarItemDataCopyWith<$Res> {
  _$EzSidebarItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? iconPath = null,
    Object? onTap = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EzSidebarItemDataImplCopyWith<$Res>
    implements $EzSidebarItemDataCopyWith<$Res> {
  factory _$$EzSidebarItemDataImplCopyWith(_$EzSidebarItemDataImpl value,
          $Res Function(_$EzSidebarItemDataImpl) then) =
      __$$EzSidebarItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String iconPath, VoidCallback onTap});
}

/// @nodoc
class __$$EzSidebarItemDataImplCopyWithImpl<$Res>
    extends _$EzSidebarItemDataCopyWithImpl<$Res, _$EzSidebarItemDataImpl>
    implements _$$EzSidebarItemDataImplCopyWith<$Res> {
  __$$EzSidebarItemDataImplCopyWithImpl(_$EzSidebarItemDataImpl _value,
      $Res Function(_$EzSidebarItemDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? iconPath = null,
    Object? onTap = null,
  }) {
    return _then(_$EzSidebarItemDataImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$EzSidebarItemDataImpl implements _EzSidebarItemData {
  const _$EzSidebarItemDataImpl(
      {required this.text, required this.iconPath, required this.onTap});

  /// The text label of the sidebar item.
  @override
  final String text;

  /// The path to the SVG icon asset.
  @override
  final String iconPath;

  /// onTap VoidCallback
  @override
  final VoidCallback onTap;

  @override
  String toString() {
    return 'EzSidebarItemData(text: $text, iconPath: $iconPath, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EzSidebarItemDataImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, iconPath, onTap);

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EzSidebarItemDataImplCopyWith<_$EzSidebarItemDataImpl> get copyWith =>
      __$$EzSidebarItemDataImplCopyWithImpl<_$EzSidebarItemDataImpl>(
          this, _$identity);
}

abstract class _EzSidebarItemData implements EzSidebarItemData {
  const factory _EzSidebarItemData(
      {required final String text,
      required final String iconPath,
      required final VoidCallback onTap}) = _$EzSidebarItemDataImpl;

  /// The text label of the sidebar item.
  @override
  String get text;

  /// The path to the SVG icon asset.
  @override
  String get iconPath;

  /// onTap VoidCallback
  @override
  VoidCallback get onTap;

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EzSidebarItemDataImplCopyWith<_$EzSidebarItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
