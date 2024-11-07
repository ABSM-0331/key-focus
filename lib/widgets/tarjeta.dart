import 'package:flutter/material.dart';
//import '../pages/aprendizaje.dart';

class Tarjeta extends StatelessWidget {
  final IconData icono;
  final Color color;
  final String texto;
  final Widget child;

  Tarjeta({
    required this.icono,
    required this.color,
    required this.texto,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => child,));
      },
      child: Card(
        color: color,
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  icono,
                  size: 40,),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(texto,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
