// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ez_sidebar_popover_item_data.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EzSidebarPopoverItemData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData? icon, String? svgPath, String text, VoidCallback onTap)
        regular,
    required TResult Function() separator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            IconData? icon, String? svgPath, String text, VoidCallback onTap)?
        regular,
    TResult? Function()? separator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            IconData? icon, String? svgPath, String text, VoidCallback onTap)?
        regular,
    TResult Function()? separator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EzRegularSidebarPopoverItemData value) regular,
    required TResult Function(EzSeparatorSidebarPopoverItemData value)
        separator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EzRegularSidebarPopoverItemData value)? regular,
    TResult? Function(EzSeparatorSidebarPopoverItemData value)? separator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EzRegularSidebarPopoverItemData value)? regular,
    TResult Function(EzSeparatorSidebarPopoverItemData value)? separator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EzSidebarPopoverItemDataCopyWith<$Res> {
  factory $EzSidebarPopoverItemDataCopyWith(EzSidebarPopoverItemData value,
          $Res Function(EzSidebarPopoverItemData) then) =
      _$EzSidebarPopoverItemDataCopyWithImpl<$Res, EzSidebarPopoverItemData>;
}

/// @nodoc
class _$EzSidebarPopoverItemDataCopyWithImpl<$Res,
        $Val extends EzSidebarPopoverItemData>
    implements $EzSidebarPopoverItemDataCopyWith<$Res> {
  _$EzSidebarPopoverItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EzSidebarPopoverItemData
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EzRegularSidebarPopoverItemDataImplCopyWith<$Res> {
  factory _$$EzRegularSidebarPopoverItemDataImplCopyWith(
          _$EzRegularSidebarPopoverItemDataImpl value,
          $Res Function(_$EzRegularSidebarPopoverItemDataImpl) then) =
      __$$EzRegularSidebarPopoverItemDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IconData? icon, String? svgPath, String text, VoidCallback onTap});
}

/// @nodoc
class __$$EzRegularSidebarPopoverItemDataImplCopyWithImpl<$Res>
    extends _$EzSidebarPopoverItemDataCopyWithImpl<$Res,
        _$EzRegularSidebarPopoverItemDataImpl>
    implements _$$EzRegularSidebarPopoverItemDataImplCopyWith<$Res> {
  __$$EzRegularSidebarPopoverItemDataImplCopyWithImpl(
      _$EzRegularSidebarPopoverItemDataImpl _value,
      $Res Function(_$EzRegularSidebarPopoverItemDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EzSidebarPopoverItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? svgPath = freezed,
    Object? text = null,
    Object? onTap = null,
  }) {
    return _then(_$EzRegularSidebarPopoverItemDataImpl(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      svgPath: freezed == svgPath
          ? _value.svgPath
          : svgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$EzRegularSidebarPopoverItemDataImpl
    implements EzRegularSidebarPopoverItemData {
  const _$EzRegularSidebarPopoverItemDataImpl(
      {this.icon, this.svgPath, required this.text, required this.onTap});

  @override
  final IconData? icon;
  @override
  final String? svgPath;
  @override
  final String text;
  @override
  final VoidCallback onTap;

  @override
  String toString() {
    return 'EzSidebarPopoverItemData.regular(icon: $icon, svgPath: $svgPath, text: $text, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EzRegularSidebarPopoverItemDataImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.svgPath, svgPath) || other.svgPath == svgPath) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, svgPath, text, onTap);

  /// Create a copy of EzSidebarPopoverItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EzRegularSidebarPopoverItemDataImplCopyWith<
          _$EzRegularSidebarPopoverItemDataImpl>
      get copyWith => __$$EzRegularSidebarPopoverItemDataImplCopyWithImpl<
          _$EzRegularSidebarPopoverItemDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData? icon, String? svgPath, String text, VoidCallback onTap)
        regular,
    required TResult Function() separator,
  }) {
    return regular(icon, svgPath, text, onTap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            IconData? icon, String? svgPath, String text, VoidCallback onTap)?
        regular,
    TResult? Function()? separator,
  }) {
    return regular?.call(icon, svgPath, text, onTap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            IconData? icon, String? svgPath, String text, VoidCallback onTap)?
        regular,
    TResult Function()? separator,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(icon, svgPath, text, onTap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EzRegularSidebarPopoverItemData value) regular,
    required TResult Function(EzSeparatorSidebarPopoverItemData value)
        separator,
  }) {
    return regular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EzRegularSidebarPopoverItemData value)? regular,
    TResult? Function(EzSeparatorSidebarPopoverItemData value)? separator,
  }) {
    return regular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EzRegularSidebarPopoverItemData value)? regular,
    TResult Function(EzSeparatorSidebarPopoverItemData value)? separator,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }
}

abstract class EzRegularSidebarPopoverItemData
    implements EzSidebarPopoverItemData {
  const factory EzRegularSidebarPopoverItemData(
          {final IconData? icon,
          final String? svgPath,
          required final String text,
          required final VoidCallback onTap}) =
      _$EzRegularSidebarPopoverItemDataImpl;

  IconData? get icon;
  String? get svgPath;
  String get text;
  VoidCallback get onTap;

  /// Create a copy of EzSidebarPopoverItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EzRegularSidebarPopoverItemDataImplCopyWith<
          _$EzRegularSidebarPopoverItemDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EzSeparatorSidebarPopoverItemDataImplCopyWith<$Res> {
  factory _$$EzSeparatorSidebarPopoverItemDataImplCopyWith(
          _$EzSeparatorSidebarPopoverItemDataImpl value,
          $Res Function(_$EzSeparatorSidebarPopoverItemDataImpl) then) =
      __$$EzSeparatorSidebarPopoverItemDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EzSeparatorSidebarPopoverItemDataImplCopyWithImpl<$Res>
    extends _$EzSidebarPopoverItemDataCopyWithImpl<$Res,
        _$EzSeparatorSidebarPopoverItemDataImpl>
    implements _$$EzSeparatorSidebarPopoverItemDataImplCopyWith<$Res> {
  __$$EzSeparatorSidebarPopoverItemDataImplCopyWithImpl(
      _$EzSeparatorSidebarPopoverItemDataImpl _value,
      $Res Function(_$EzSeparatorSidebarPopoverItemDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EzSidebarPopoverItemData
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EzSeparatorSidebarPopoverItemDataImpl
    implements EzSeparatorSidebarPopoverItemData {
  const _$EzSeparatorSidebarPopoverItemDataImpl();

  @override
  String toString() {
    return 'EzSidebarPopoverItemData.separator()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EzSeparatorSidebarPopoverItemDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData? icon, String? svgPath, String text, VoidCallback onTap)
        regular,
    required TResult Function() separator,
  }) {
    return separator();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            IconData? icon, String? svgPath, String text, VoidCallback onTap)?
        regular,
    TResult? Function()? separator,
  }) {
    return separator?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            IconData? icon, String? svgPath, String text, VoidCallback onTap)?
        regular,
    TResult Function()? separator,
    required TResult orElse(),
  }) {
    if (separator != null) {
      return separator();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EzRegularSidebarPopoverItemData value) regular,
    required TResult Function(EzSeparatorSidebarPopoverItemData value)
        separator,
  }) {
    return separator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EzRegularSidebarPopoverItemData value)? regular,
    TResult? Function(EzSeparatorSidebarPopoverItemData value)? separator,
  }) {
    return separator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EzRegularSidebarPopoverItemData value)? regular,
    TResult Function(EzSeparatorSidebarPopoverItemData value)? separator,
    required TResult orElse(),
  }) {
    if (separator != null) {
      return separator(this);
    }
    return orElse();
  }
}

abstract class EzSeparatorSidebarPopoverItemData
    implements EzSidebarPopoverItemData {
  const factory EzSeparatorSidebarPopoverItemData() =
      _$EzSeparatorSidebarPopoverItemDataImpl;
}
