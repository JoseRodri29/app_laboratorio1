import 'package:flutter/material.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reproductor de Podcast'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Título del podcast
          const Text(
            'Título del Podcast',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          // Controles de reproducción
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.skip_previous),
                onPressed: () {
                  // Lógica para saltar al podcast anterior
                },
              ),
              IconButton(
                icon: const Icon(Icons.play_arrow),
                onPressed: () {
                  // Lógica para reproducir/pausar el podcast
                },
              ),
              IconButton(
                icon: const Icon(Icons.skip_next),
                onPressed: () {
                  // Lógica para saltar al siguiente podcast
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Barra de progreso de reproducción
          Slider(
            value: 0.5, // Aquí debes establecer el progreso actual
            onChanged: (newValue) {
              // Lógica para cambiar el progreso de reproducción
            },
          ),
          // Controles de volumen
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.volume_down),
                onPressed: () {
                  // Lógica para disminuir el volumen
                },
              ),
              IconButton(
                icon: const Icon(Icons.volume_up),
                onPressed: () {
                  // Lógica para aumentar el volumen
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PodcastPage(),
  ));
}
