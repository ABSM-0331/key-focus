import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import necesario para manejar la orientación

class HorizontalScreen extends StatefulWidget {
  @override
  _HorizontalScreenState createState() => _HorizontalScreenState();
}

class _HorizontalScreenState extends State<HorizontalScreen> {
  @override
  void initState() {
    super.initState();
    // Forzar orientación horizontal
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    // Restaurar la orientación al salir de la pantalla
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pantalla Horizontal")),
      body: Center(
        child: Text(
          "Esta pantalla está fija en horizontal",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
