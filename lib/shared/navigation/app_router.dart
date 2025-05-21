import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/timer/timer_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/timer',
      builder: (context, state) => const TimerPage(),
    ),
  ],
);
