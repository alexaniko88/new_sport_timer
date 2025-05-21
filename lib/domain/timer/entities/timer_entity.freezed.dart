// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimerEntity _$TimerEntityFromJson(Map<String, dynamic> json) {
  return _TimerEntity.fromJson(json);
}

/// @nodoc
mixin _$TimerEntity {
  int get seconds => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;

  /// Serializes this TimerEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerEntityCopyWith<TimerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEntityCopyWith<$Res> {
  factory $TimerEntityCopyWith(
          TimerEntity value, $Res Function(TimerEntity) then) =
      _$TimerEntityCopyWithImpl<$Res, TimerEntity>;
  @useResult
  $Res call({int seconds, bool isRunning});
}

/// @nodoc
class _$TimerEntityCopyWithImpl<$Res, $Val extends TimerEntity>
    implements $TimerEntityCopyWith<$Res> {
  _$TimerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? isRunning = null,
  }) {
    return _then(_value.copyWith(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimerEntityImplCopyWith<$Res>
    implements $TimerEntityCopyWith<$Res> {
  factory _$$TimerEntityImplCopyWith(
          _$TimerEntityImpl value, $Res Function(_$TimerEntityImpl) then) =
      __$$TimerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seconds, bool isRunning});
}

/// @nodoc
class __$$TimerEntityImplCopyWithImpl<$Res>
    extends _$TimerEntityCopyWithImpl<$Res, _$TimerEntityImpl>
    implements _$$TimerEntityImplCopyWith<$Res> {
  __$$TimerEntityImplCopyWithImpl(
      _$TimerEntityImpl _value, $Res Function(_$TimerEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? isRunning = null,
  }) {
    return _then(_$TimerEntityImpl(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimerEntityImpl implements _TimerEntity {
  const _$TimerEntityImpl({required this.seconds, required this.isRunning});

  factory _$TimerEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimerEntityImplFromJson(json);

  @override
  final int seconds;
  @override
  final bool isRunning;

  @override
  String toString() {
    return 'TimerEntity(seconds: $seconds, isRunning: $isRunning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerEntityImpl &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seconds, isRunning);

  /// Create a copy of TimerEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerEntityImplCopyWith<_$TimerEntityImpl> get copyWith =>
      __$$TimerEntityImplCopyWithImpl<_$TimerEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimerEntityImplToJson(
      this,
    );
  }
}

abstract class _TimerEntity implements TimerEntity {
  const factory _TimerEntity(
      {required final int seconds,
      required final bool isRunning}) = _$TimerEntityImpl;

  factory _TimerEntity.fromJson(Map<String, dynamic> json) =
      _$TimerEntityImpl.fromJson;

  @override
  int get seconds;
  @override
  bool get isRunning;

  /// Create a copy of TimerEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerEntityImplCopyWith<_$TimerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
