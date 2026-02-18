import 'package:flutter/material.dart';

class ScreenThirtyThree extends StatelessWidget {
  const ScreenThirtyThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        elevation: 3,
        title: Text("Stack",
          style: TextStyle(
              color: Colors.amber,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.cyanAccent,
            ),
            Container(
              width: 280,
              height: 280,
              color: Colors.blue,
            ),
            Container(
              width: 250,
              height: 250,
              color: Color(0xFF0D1B2A),
            ),
            Container(
              width: 230,
              height: 230,
              color: Colors.white,
            ),
            SizedBox(
              width: 180,
              height: 180,
              child: Image.network(
                'https://i.ibb.co/tDVbCCW/simplife-logo1.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}