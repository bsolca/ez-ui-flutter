// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tempo_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TempoModel _$TempoModelFromJson(Map<String, dynamic> json) {
  return _TempoModel.fromJson(json);
}

/// @nodoc
mixin _$TempoModel {
  /// Duration for the eccentric (lowering) phase
  @DefaultDoubleConverter()
  double get eccentric => throw _privateConstructorUsedError;

  /// Duration for the concentric (lifting) phase
  @DefaultDoubleConverter()
  double get pause => throw _privateConstructorUsedError;

  /// Duration for the concentric (lifting) phase
  @DefaultDoubleConverter()
  double get concentric => throw _privateConstructorUsedError;

  /// Serializes this TempoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TempoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempoModelCopyWith<TempoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempoModelCopyWith<$Res> {
  factory $TempoModelCopyWith(
          TempoModel value, $Res Function(TempoModel) then) =
      _$TempoModelCopyWithImpl<$Res, TempoModel>;
  @useResult
  $Res call(
      {@DefaultDoubleConverter() double eccentric,
      @DefaultDoubleConverter() double pause,
      @DefaultDoubleConverter() double concentric});
}

/// @nodoc
class _$TempoModelCopyWithImpl<$Res, $Val extends TempoModel>
    implements $TempoModelCopyWith<$Res> {
  _$TempoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TempoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eccentric = null,
    Object? pause = null,
    Object? concentric = null,
  }) {
    return _then(_value.copyWith(
      eccentric: null == eccentric
          ? _value.eccentric
          : eccentric // ignore: cast_nullable_to_non_nullable
              as double,
      pause: null == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as double,
      concentric: null == concentric
          ? _value.concentric
          : concentric // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TempoModelImplCopyWith<$Res>
    implements $TempoModelCopyWith<$Res> {
  factory _$$TempoModelImplCopyWith(
          _$TempoModelImpl value, $Res Function(_$TempoModelImpl) then) =
      __$$TempoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DefaultDoubleConverter() double eccentric,
      @DefaultDoubleConverter() double pause,
      @DefaultDoubleConverter() double concentric});
}

/// @nodoc
class __$$TempoModelImplCopyWithImpl<$Res>
    extends _$TempoModelCopyWithImpl<$Res, _$TempoModelImpl>
    implements _$$TempoModelImplCopyWith<$Res> {
  __$$TempoModelImplCopyWithImpl(
      _$TempoModelImpl _value, $Res Function(_$TempoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TempoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eccentric = null,
    Object? pause = null,
    Object? concentric = null,
  }) {
    return _then(_$TempoModelImpl(
      eccentric: null == eccentric
          ? _value.eccentric
          : eccentric // ignore: cast_nullable_to_non_nullable
              as double,
      pause: null == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as double,
      concentric: null == concentric
          ? _value.concentric
          : concentric // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TempoModelImpl implements _TempoModel {
  const _$TempoModelImpl(
      {@DefaultDoubleConverter() required this.eccentric,
      @DefaultDoubleConverter() required this.pause,
      @DefaultDoubleConverter() required this.concentric});

  factory _$TempoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempoModelImplFromJson(json);

  /// Duration for the eccentric (lowering) phase
  @override
  @DefaultDoubleConverter()
  final double eccentric;

  /// Duration for the concentric (lifting) phase
  @override
  @DefaultDoubleConverter()
  final double pause;

  /// Duration for the concentric (lifting) phase
  @override
  @DefaultDoubleConverter()
  final double concentric;

  @override
  String toString() {
    return 'TempoModel(eccentric: $eccentric, pause: $pause, concentric: $concentric)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempoModelImpl &&
            (identical(other.eccentric, eccentric) ||
                other.eccentric == eccentric) &&
            (identical(other.pause, pause) || other.pause == pause) &&
            (identical(other.concentric, concentric) ||
                other.concentric == concentric));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eccentric, pause, concentric);

  /// Create a copy of TempoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempoModelImplCopyWith<_$TempoModelImpl> get copyWith =>
      __$$TempoModelImplCopyWithImpl<_$TempoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempoModelImplToJson(
      this,
    );
  }
}

abstract class _TempoModel implements TempoModel {
  const factory _TempoModel(
          {@DefaultDoubleConverter() required final double eccentric,
          @DefaultDoubleConverter() required final double pause,
          @DefaultDoubleConverter() required final double concentric}) =
      _$TempoModelImpl;

  factory _TempoModel.fromJson(Map<String, dynamic> json) =
      _$TempoModelImpl.fromJson;

  /// Duration for the eccentric (lowering) phase
  @override
  @DefaultDoubleConverter()
  double get eccentric;

  /// Duration for the concentric (lifting) phase
  @override
  @DefaultDoubleConverter()
  double get pause;

  /// Duration for the concentric (lifting) phase
  @override
  @DefaultDoubleConverter()
  double get concentric;

  /// Create a copy of TempoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempoModelImplCopyWith<_$TempoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
