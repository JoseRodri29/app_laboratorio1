import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      body: ListView(
        children: <Widget>[
          _buildNoticia(
            titulo: 'El Ingeniero Pablo rompre record de reprobados',
            contenido:
                'La clase de Programación III, impartida por el Ingeniero Pablo, ha alcanzado un récord inusual con 30 estudiantes reprobados. Este hecho ha generado sorpresa entre la comunidad estudiantil, suscitando la necesidad de evaluar y ajustar los recursos académicos y de apoyo disponibles para garantizar el éxito de todos los estudiantes.',
            imagenUrl:
                'https://play-lh.googleusercontent.com/qIpCqZKgPrJ6evgXdI0-0wAYuUMqBgE23IDw_JTEYeFOj45ocwH97h-bHn78uVACcp_G',
          ),
          _buildNoticia(
            titulo: 'Estudiantes donan 5 laptops',
            contenido: 'Estudiantes de Informática de la Universidad XYZ han donado cinco laptops al programa de vinculación de la institución. Esta acción solidaria permite fortalecer recursos para apoyar a otros estudiantes. A cambio, los donantes participarán en horas de vinculación, colaborando en proyectos y actividades universitarias. Su generosidad refleja un compromiso con el bienestar estudiantil y la colaboración comunitaria.',
            imagenUrl: 'https://www.shutterstock.com/image-vector/kid-online-learning-vector-child-600nw-2288905273.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildNoticia(
      {required String titulo,
      required String contenido,
      required String imagenUrl}) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            imagenUrl,
            height: 200, // Tamaño deseado de la imagen
            width: double
                .infinity, // Ancho de la imagen para llenar el espacio disponible
            fit: BoxFit
                .cover, // Ajuste de la imagen para cubrir completamente el espacio
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titulo,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  contenido,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
