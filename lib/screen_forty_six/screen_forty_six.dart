import 'package:flutter/material.dart';

class ScreenFortySix extends StatefulWidget {
  const ScreenFortySix({super.key});

  @override
  State<ScreenFortySix> createState() => _ScreenFortySixState();
}

class _ScreenFortySixState extends State<ScreenFortySix> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        elevation: 3,
        title: const Text(
          "change button color and text",
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
            onPressed: () =>setState(()=>flag=!flag),
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: Text(
              flag ? 'you pressed me' : 'Press Me',
              style:  TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: flag?Colors.amber : Color(0xFF222222),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
