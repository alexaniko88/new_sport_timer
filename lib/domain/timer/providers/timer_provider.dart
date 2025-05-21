import 'dart:async';
import 'package:flutter/foundation.dart';
import '../entities/timer_entity.dart';

class TimerProvider extends ChangeNotifier {
  Timer? _timer;
  TimerEntity _timerState = const TimerEntity(seconds: 0, isRunning: false);

  TimerEntity get timerState => _timerState;

  void startTimer() {
    if (_timerState.isRunning) return;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _timerState = TimerEntity(
        seconds: _timerState.seconds + 1,
        isRunning: true,
      );
      notifyListeners();
    });
  }

  void stopTimer() {
    _timer?.cancel();
    _timerState = TimerEntity(
      seconds: _timerState.seconds,
      isRunning: false,
    );
    notifyListeners();
  }

  void resetTimer() {
    _timer?.cancel();
    _timerState = const TimerEntity(seconds: 0, isRunning: false);
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
