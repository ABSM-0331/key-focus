import 'package:flutter/material.dart';

class PianoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Piano"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Piano Visual",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Piano(),
          ],
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
      child: Column(
        children: [
          // White Keys
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(7, (index) {
              return GestureDetector(
                onTap: () {
                  print("White key $index pressed");
                },
                child: Container(
                  height: 150,
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
          // Black Keys
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _blackKey(context),
              _blackKey(context),
              Spacer(flex: 1),
              _blackKey(context),
              _blackKey(context),
              _blackKey(context),
            ],
          ),
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
        height: 100,
        width: 30,
        margin: EdgeInsets.only(left: 20, right: 20, top: 0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
