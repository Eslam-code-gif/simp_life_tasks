import 'package:flutter/material.dart';

class ScreenFortyThree extends StatelessWidget {
  const ScreenFortyThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        elevation: 3,
        title: const Text(
          "Show Button type",
          style: TextStyle(
              color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network("https://i.ibb.co/tDVbCCW/simplife-logo1.png"),
          const SizedBox(height: 60),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: const Text(
              'Press Me',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF222222),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
