import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_entity.freezed.dart';
part 'timer_entity.g.dart';

@freezed
class TimerEntity with _$TimerEntity {
  const factory TimerEntity({
    required int seconds,
    required bool isRunning,
  }) = _TimerEntity;

  factory TimerEntity.fromJson(Map<String, dynamic> json) => _$TimerEntityFromJson(json);
}
