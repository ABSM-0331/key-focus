import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import necesario para manejar la orientación

class HorizontalScreen extends StatefulWidget {
  @override
  Horizontalscreenstate createState() => Horizontalscreenstate();
}

class Horizontalscreenstate extends State<HorizontalScreen> {
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
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Piano",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Piano(),
            ],
          ),
        ),
      ),
    );
  }
}

class Piano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.black,
      child: Stack(
        children: [
          // White Keys

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(16, (index) {
              return GestureDetector(
                onTap: () {
                  print("White key $index pressed");
                },
                child: Container(
                  height: 250,
                  width: 50,
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              );
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 55),
              _blackKey(context),
              SizedBox(width: 30),
              _blackKey(context),
              _blackKey(context),
              _blackKey(context),
              SizedBox(width: 80),
              _blackKey(context),
              _blackKey(context),
              _blackKey(context),
              SizedBox(width: 90),
              _blackKey(context),
              _blackKey(context),
              SizedBox(width: 0),
            ],
          ),
          // Black Keys
        ],
      ),
    );
  }

  Widget _blackKey(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Black key pressed");
      },
      child: Container(
        height: 150,
        width: 40,
        margin: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
