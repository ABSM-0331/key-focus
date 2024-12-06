import 'package:flutter/material.dart';

class PianoPage extends StatelessWidget {
  const PianoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Piano'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 14 / 5, // Proporción de teclas del piano
          child: Stack(
            children: [
              // Teclas blancas
              Row(
                children: List.generate(
                  7, // Número de teclas blancas
                  (index) => Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 0.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                ),
              ),
              // Teclas negras superpuestas
              Positioned.fill(
                child: Row(
                  children: [
                    // Posición de las teclas negras (patrón realista)
                    buildBlackKey(context),
                    Spacer(flex: 1),
                    buildBlackKey(context),
                    Spacer(flex: 2),
                    buildBlackKey(context),
                    Spacer(flex: 1),
                    buildBlackKey(context),
                    Spacer(flex: 1),
                    buildBlackKey(context),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBlackKey(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.6, // Ancho de la tecla negra en relación a la blanca
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2, // Altura fija
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
        ),
      ),
    );
  }
}
