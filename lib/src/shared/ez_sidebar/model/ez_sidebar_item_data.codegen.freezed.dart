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
  String get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, EzIcons? icon, VoidCallback onTap)
        regular,
    required TResult Function(String text) heading,
    required TResult Function(String text, EzIcons? icon, VoidCallback onTap)
        bottom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, EzIcons? icon, VoidCallback onTap)? regular,
    TResult? Function(String text)? heading,
    TResult? Function(String text, EzIcons? icon, VoidCallback onTap)? bottom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, EzIcons? icon, VoidCallback onTap)? regular,
    TResult Function(String text)? heading,
    TResult Function(String text, EzIcons? icon, VoidCallback onTap)? bottom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegularSidebarItemData value) regular,
    required TResult Function(HeadingSidebarItemData value) heading,
    required TResult Function(BottomSidebarItemData value) bottom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegularSidebarItemData value)? regular,
    TResult? Function(HeadingSidebarItemData value)? heading,
    TResult? Function(BottomSidebarItemData value)? bottom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegularSidebarItemData value)? regular,
    TResult Function(HeadingSidebarItemData value)? heading,
    TResult Function(BottomSidebarItemData value)? bottom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
  $Res call({String text});
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
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegularSidebarItemDataImplCopyWith<$Res>
    implements $EzSidebarItemDataCopyWith<$Res> {
  factory _$$RegularSidebarItemDataImplCopyWith(
          _$RegularSidebarItemDataImpl value,
          $Res Function(_$RegularSidebarItemDataImpl) then) =
      __$$RegularSidebarItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, EzIcons? icon, VoidCallback onTap});
}

/// @nodoc
class __$$RegularSidebarItemDataImplCopyWithImpl<$Res>
    extends _$EzSidebarItemDataCopyWithImpl<$Res, _$RegularSidebarItemDataImpl>
    implements _$$RegularSidebarItemDataImplCopyWith<$Res> {
  __$$RegularSidebarItemDataImplCopyWithImpl(
      _$RegularSidebarItemDataImpl _value,
      $Res Function(_$RegularSidebarItemDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = freezed,
    Object? onTap = null,
  }) {
    return _then(_$RegularSidebarItemDataImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as EzIcons?,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$RegularSidebarItemDataImpl implements RegularSidebarItemData {
  const _$RegularSidebarItemDataImpl(
      {required this.text, required this.icon, required this.onTap});

  @override
  final String text;
  @override
  final EzIcons? icon;
  @override
  final VoidCallback onTap;

  @override
  String toString() {
    return 'EzSidebarItemData.regular(text: $text, icon: $icon, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegularSidebarItemDataImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, icon, onTap);

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegularSidebarItemDataImplCopyWith<_$RegularSidebarItemDataImpl>
      get copyWith => __$$RegularSidebarItemDataImplCopyWithImpl<
          _$RegularSidebarItemDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, EzIcons? icon, VoidCallback onTap)
        regular,
    required TResult Function(String text) heading,
    required TResult Function(String text, EzIcons? icon, VoidCallback onTap)
        bottom,
  }) {
    return regular(text, icon, onTap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, EzIcons? icon, VoidCallback onTap)? regular,
    TResult? Function(String text)? heading,
    TResult? Function(String text, EzIcons? icon, VoidCallback onTap)? bottom,
  }) {
    return regular?.call(text, icon, onTap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, EzIcons? icon, VoidCallback onTap)? regular,
    TResult Function(String text)? heading,
    TResult Function(String text, EzIcons? icon, VoidCallback onTap)? bottom,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(text, icon, onTap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegularSidebarItemData value) regular,
    required TResult Function(HeadingSidebarItemData value) heading,
    required TResult Function(BottomSidebarItemData value) bottom,
  }) {
    return regular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegularSidebarItemData value)? regular,
    TResult? Function(HeadingSidebarItemData value)? heading,
    TResult? Function(BottomSidebarItemData value)? bottom,
  }) {
    return regular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegularSidebarItemData value)? regular,
    TResult Function(HeadingSidebarItemData value)? heading,
    TResult Function(BottomSidebarItemData value)? bottom,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }
}

abstract class RegularSidebarItemData implements EzSidebarItemData {
  const factory RegularSidebarItemData(
      {required final String text,
      required final EzIcons? icon,
      required final VoidCallback onTap}) = _$RegularSidebarItemDataImpl;

  @override
  String get text;
  EzIcons? get icon;
  VoidCallback get onTap;

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegularSidebarItemDataImplCopyWith<_$RegularSidebarItemDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HeadingSidebarItemDataImplCopyWith<$Res>
    implements $EzSidebarItemDataCopyWith<$Res> {
  factory _$$HeadingSidebarItemDataImplCopyWith(
          _$HeadingSidebarItemDataImpl value,
          $Res Function(_$HeadingSidebarItemDataImpl) then) =
      __$$HeadingSidebarItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$HeadingSidebarItemDataImplCopyWithImpl<$Res>
    extends _$EzSidebarItemDataCopyWithImpl<$Res, _$HeadingSidebarItemDataImpl>
    implements _$$HeadingSidebarItemDataImplCopyWith<$Res> {
  __$$HeadingSidebarItemDataImplCopyWithImpl(
      _$HeadingSidebarItemDataImpl _value,
      $Res Function(_$HeadingSidebarItemDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$HeadingSidebarItemDataImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HeadingSidebarItemDataImpl implements HeadingSidebarItemData {
  const _$HeadingSidebarItemDataImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'EzSidebarItemData.heading(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeadingSidebarItemDataImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadingSidebarItemDataImplCopyWith<_$HeadingSidebarItemDataImpl>
      get copyWith => __$$HeadingSidebarItemDataImplCopyWithImpl<
          _$HeadingSidebarItemDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, EzIcons? icon, VoidCallback onTap)
        regular,
    required TResult Function(String text) heading,
    required TResult Function(String text, EzIcons? icon, VoidCallback onTap)
        bottom,
  }) {
    return heading(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, EzIcons? icon, VoidCallback onTap)? regular,
    TResult? Function(String text)? heading,
    TResult? Function(String text, EzIcons? icon, VoidCallback onTap)? bottom,
  }) {
    return heading?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, EzIcons? icon, VoidCallback onTap)? regular,
    TResult Function(String text)? heading,
    TResult Function(String text, EzIcons? icon, VoidCallback onTap)? bottom,
    required TResult orElse(),
  }) {
    if (heading != null) {
      return heading(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegularSidebarItemData value) regular,
    required TResult Function(HeadingSidebarItemData value) heading,
    required TResult Function(BottomSidebarItemData value) bottom,
  }) {
    return heading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegularSidebarItemData value)? regular,
    TResult? Function(HeadingSidebarItemData value)? heading,
    TResult? Function(BottomSidebarItemData value)? bottom,
  }) {
    return heading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegularSidebarItemData value)? regular,
    TResult Function(HeadingSidebarItemData value)? heading,
    TResult Function(BottomSidebarItemData value)? bottom,
    required TResult orElse(),
  }) {
    if (heading != null) {
      return heading(this);
    }
    return orElse();
  }
}

abstract class HeadingSidebarItemData implements EzSidebarItemData {
  const factory HeadingSidebarItemData({required final String text}) =
      _$HeadingSidebarItemDataImpl;

  @override
  String get text;

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeadingSidebarItemDataImplCopyWith<_$HeadingSidebarItemDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BottomSidebarItemDataImplCopyWith<$Res>
    implements $EzSidebarItemDataCopyWith<$Res> {
  factory _$$BottomSidebarItemDataImplCopyWith(
          _$BottomSidebarItemDataImpl value,
          $Res Function(_$BottomSidebarItemDataImpl) then) =
      __$$BottomSidebarItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, EzIcons? icon, VoidCallback onTap});
}

/// @nodoc
class __$$BottomSidebarItemDataImplCopyWithImpl<$Res>
    extends _$EzSidebarItemDataCopyWithImpl<$Res, _$BottomSidebarItemDataImpl>
    implements _$$BottomSidebarItemDataImplCopyWith<$Res> {
  __$$BottomSidebarItemDataImplCopyWithImpl(_$BottomSidebarItemDataImpl _value,
      $Res Function(_$BottomSidebarItemDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = freezed,
    Object? onTap = null,
  }) {
    return _then(_$BottomSidebarItemDataImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as EzIcons?,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$BottomSidebarItemDataImpl implements BottomSidebarItemData {
  const _$BottomSidebarItemDataImpl(
      {required this.text, required this.icon, required this.onTap});

  @override
  final String text;
  @override
  final EzIcons? icon;
  @override
  final VoidCallback onTap;

  @override
  String toString() {
    return 'EzSidebarItemData.bottom(text: $text, icon: $icon, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomSidebarItemDataImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, icon, onTap);

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomSidebarItemDataImplCopyWith<_$BottomSidebarItemDataImpl>
      get copyWith => __$$BottomSidebarItemDataImplCopyWithImpl<
          _$BottomSidebarItemDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, EzIcons? icon, VoidCallback onTap)
        regular,
    required TResult Function(String text) heading,
    required TResult Function(String text, EzIcons? icon, VoidCallback onTap)
        bottom,
  }) {
    return bottom(text, icon, onTap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, EzIcons? icon, VoidCallback onTap)? regular,
    TResult? Function(String text)? heading,
    TResult? Function(String text, EzIcons? icon, VoidCallback onTap)? bottom,
  }) {
    return bottom?.call(text, icon, onTap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, EzIcons? icon, VoidCallback onTap)? regular,
    TResult Function(String text)? heading,
    TResult Function(String text, EzIcons? icon, VoidCallback onTap)? bottom,
    required TResult orElse(),
  }) {
    if (bottom != null) {
      return bottom(text, icon, onTap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegularSidebarItemData value) regular,
    required TResult Function(HeadingSidebarItemData value) heading,
    required TResult Function(BottomSidebarItemData value) bottom,
  }) {
    return bottom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegularSidebarItemData value)? regular,
    TResult? Function(HeadingSidebarItemData value)? heading,
    TResult? Function(BottomSidebarItemData value)? bottom,
  }) {
    return bottom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegularSidebarItemData value)? regular,
    TResult Function(HeadingSidebarItemData value)? heading,
    TResult Function(BottomSidebarItemData value)? bottom,
    required TResult orElse(),
  }) {
    if (bottom != null) {
      return bottom(this);
    }
    return orElse();
  }
}

abstract class BottomSidebarItemData implements EzSidebarItemData {
  const factory BottomSidebarItemData(
      {required final String text,
      required final EzIcons? icon,
      required final VoidCallback onTap}) = _$BottomSidebarItemDataImpl;

  @override
  String get text;
  EzIcons? get icon;
  VoidCallback get onTap;

  /// Create a copy of EzSidebarItemData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomSidebarItemDataImplCopyWith<_$BottomSidebarItemDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
