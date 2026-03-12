import 'package:flutter/material.dart';

class ScreenFortyOne extends StatefulWidget {
  const ScreenFortyOne({super.key});

  @override
  State<ScreenFortyOne> createState() => _ScreenFortyOneState();
}

class _ScreenFortyOneState extends State<ScreenFortyOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        elevation: 3,
        title: const Text(
          "ElevatedIconButton",
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
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF222222),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
            ),
            label: const Text(
              'See My Type',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: const Icon(Icons.remove_red_eye_outlined,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
