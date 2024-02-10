import 'package:flutter_laboratorio_1/presentation/screens/home/home_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/noticias_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/noticias',
      builder: (context, state) => const NoticiasScreen(),
    ),
  ],
);