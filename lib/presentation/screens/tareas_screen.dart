import 'package:flutter/material.dart';

class ListaTareas extends StatelessWidget{
  const ListaTareas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Tareas"),
      ),
      body: ListView(
        children: <Widget>[
          Tareas(
            "Programación Movil",
            "Actividad: ",
            "1er Avance de Proyecto con Login, Menu principal, Navegación por Tabs",
            "Domingo 18/02"
            ),
          Tareas(
            "Geometría y Trigonometría",
            "Prueba",
            "Prueba#2 - Circulo Unitario",
            "Viernes 16/02"
            ),
          Tareas(
            "Fisica II",
            "Laboratorio",
            "Subir los ejercicios hechos en la clase del viernes 09/02",
            "Domingo 18/02"
            ),
          Tareas(
            "Ingles IV",
            "Foro",
            "Write a story about the last time you were on vacation, use the past tense forms of the verb.",
            "Viernes 16/02"
            ),
          Tareas(
            "Administración II",
            "Actividad",
            "Investigar que es un analisis Foda y subir uno como ejemplo",
            "Domingo 18/02"
            ),
          Tareas(
            "Programación Movil",
            "Actividad",
            "Trabajo en grupo, Desarrollar juntos una aplicación con ListView",
            "Domingo 18/02"
            ),
          Tareas(
            "Fisica II",
            "Prueba",
            "Prueba#2 - Pendulo",
            "Viernes 16/02"
            ),
        ],
      )
    );
  }

  Widget Tareas(String Clase, String Tipo, String Mensaje, String Fecha){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(Clase, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(Tipo),
          Text(Mensaje),
          Text(Fecha)
        ],
      ),
    );
  }

}

