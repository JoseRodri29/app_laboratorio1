import 'package:flutter/material.dart';
//import 'package:flutter_laboratorio_1/presentation/screens/divisas/divisas_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/home/home_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/noticias_screen.dart';
import 'package:flutter_laboratorio_1/presentation/screens/podcats_screen.dart';
//import 'package:flutter_laboratorio_1/presentation/screens/podcats_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CEUTEC',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/noticias': (context) => const NoticiasScreen(),
        //'/cambioMoneda': (context) => CambioMonedaPage(),  //cambiar el nombre segun la class
        //'/listaTareas': (context) => const ListaTareasPage(), //aqui igual
        '/podcast': (context) => const PodcastPage(), // igual
      },
    );
  }
}
