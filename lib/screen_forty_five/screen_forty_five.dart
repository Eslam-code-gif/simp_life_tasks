import 'package:flutter/material.dart';

class ScreenFortyFive extends StatefulWidget {
  const ScreenFortyFive({super.key});

  @override
  State<ScreenFortyFive> createState() => _ScreenFortyFiveState();
}

class _ScreenFortyFiveState extends State<ScreenFortyFive> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        elevation: 3,
        title: const Text(
          "change button color",
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
              'Press Me',
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
