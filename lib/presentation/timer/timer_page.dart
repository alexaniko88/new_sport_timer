import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/timer/providers/timer_provider.dart';
import 'timer_view.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TimerProvider(),
      child: const Scaffold(
        body: TimerView(),
      ),
    );
  }
}
