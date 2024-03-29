import 'package:flutter_laboratorio_1/presentation/screens/tareas_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_laboratorio_1/presentation/screens/divisas/divisas_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/home/home_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/noticias_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/podcats_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/home/monedas_screen.dart';

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
    GoRoute(
      path: '/listaTareas',
      builder: (context, state) => const ListaTareas(),
    ),
    GoRoute(
      path: '/cambioMoneda',
      builder: (context, state) => CambioMonedaPage(),
    ),
    GoRoute(
      path: '/podcast',
      builder: (context, state) => const PodcastPage(),
    ),
  ],
);
