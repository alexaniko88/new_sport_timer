import 'package:go_router/go_router.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/timer/timer_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/timer',
      name: '/timer',
      builder: (context, state) => const TimerPage(),
    ),
  ],
);
