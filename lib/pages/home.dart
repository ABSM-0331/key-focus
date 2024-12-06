import 'package:flutter/material.dart';
import 'piano.dart';
import 'aprendizaje.dart';
import 'juego.dart';
import '../widgets/tarjeta.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double espacio = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text("Key Focus",
                    style: TextStyle(
                        color: Color.fromARGB(255, 42, 105, 207),
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
                Text(
                  "Explora nuestros modulos de aprendizaje",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Tarjeta(
                            icono: Icons.music_note_rounded,
                            color: Colors.blue.shade200,
                            texto: "Aprende+",
                            child: LearningPage(),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Tarjeta(
                            icono: Icons.piano,
                            color: Colors.yellow.shade300,
                            texto: "Creación musical",
                            child: HorizontalScreen(),
                          ),
                          SizedBox(
                            height: espacio,
                          ),
                          Tarjeta(
                            icono: Icons.people,
                            color: Colors.pinkAccent.shade100,
                            texto: "Colaboraciones",
                            child: LearningPage(),
                          ),
                          SizedBox(
                            height: espacio,
                          ),
                          Tarjeta(
                            icono: Icons.bar_chart,
                            color: Colors.orange.shade200,
                            texto: "Progreso",
                            child: LearningPage(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Tarjeta(
                            color: Colors.greenAccent,
                            icono: Icons.sports_esports,
                            texto: "Juegos interactivos",
                            child: GameApp(),
                          ),
                          SizedBox(
                            height: espacio,
                          ),
                          Tarjeta(
                            icono: Icons.smart_toy,
                            color: Colors.purple.shade100,
                            texto: "IA adaptativa",
                            child: LearningPage(),
                          ),
                          SizedBox(
                            height: espacio,
                          ),
                          Tarjeta(
                            icono: Icons.psychology,
                            color: Colors.purpleAccent.shade100,
                            texto: "Analisis sensorial",
                            child: LearningPage(),
                          ),
                          SizedBox(
                            height: espacio,
                          ),
                          Tarjeta(
                            icono: Icons.settings,
                            color: Colors.grey.shade300,
                            texto: "Configuración",
                            child: LearningPage(),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
