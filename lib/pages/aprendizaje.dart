import 'package:flutter/material.dart';

class LearningPage extends StatefulWidget {
  @override
  LearningPageState createState() => LearningPageState();
}

class LearningPageState extends State<LearningPage> {
  var buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue.shade400,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment:
                  Alignment.topLeft, // Posiciona el texto en la parte superior
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.music_note_rounded,
                      size: 30,
                    ),
                    Text(
                      "Aprende+",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0), // Margen alrededor de la tarjeta
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Lección de hoy: Ritmos básicos",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: double.infinity,
                      height: 400,
                      child: Card(
                        elevation: 0,
                        color: Colors.grey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            key: Key("tarjeta"),
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.music_note_rounded),
                                  Text(
                                    "Toca la pantalla al ritmo",
                                    style:
                                        TextStyle(color: Colors.grey.shade900),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: double
                                      .infinity, // Ocupa todo el ancho disponible
                                  child: Card(
                                    elevation: 0,
                                    color: Colors.grey.shade300,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Center(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () => {Navigator.pop(context)},
                          style: buttonStyle,
                          child: const Text("Regresar"),
                        ),
                        ElevatedButton(
                          onPressed: () => {},
                          style: buttonStyle,
                          child: Text(
                            "Iniciar",
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
