import 'package:flutter/material.dart';
import 'package:flutter_laboratorio_1/presentation/screens/home/monedas_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/home/home_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/noticias_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/podcats_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/tareas_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/podcats_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CEUTEC',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/noticias': (context) => const NoticiasScreen(),
        '/podcast': (context) => const PodcastPage(),
        '/listaTareas': (context) => const ListaTareas(), 
        '/cambioMoneda': (context) => CambioMonedaPage(),
      },
    );
  }
}