// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimerEntityImpl _$$TimerEntityImplFromJson(Map<String, dynamic> json) =>
    _$TimerEntityImpl(
      seconds: (json['seconds'] as num).toInt(),
      isRunning: json['isRunning'] as bool,
    );

Map<String, dynamic> _$$TimerEntityImplToJson(_$TimerEntityImpl instance) =>
    <String, dynamic>{
      'seconds': instance.seconds,
      'isRunning': instance.isRunning,
    };
