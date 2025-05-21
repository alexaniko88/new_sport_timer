import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/timer/providers/timer_provider.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TimerProvider>(
      builder: (context, timerProvider, child) {
        final timerState = timerProvider.timerState;
        final minutes = (timerState.seconds ~/ 60).toString().padLeft(2, '0');
        final seconds = (timerState.seconds % 60).toString().padLeft(2, '0');

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$minutes:$seconds',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!timerState.isRunning)
                  ElevatedButton(
                    onPressed: timerProvider.startTimer,
                    child: const Text('Start'),
                  )
                else
                  ElevatedButton(
                    onPressed: timerProvider.stopTimer,
                    child: const Text('Stop'),
                  ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: timerProvider.resetTimer,
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
