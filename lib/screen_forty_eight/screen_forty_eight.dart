import 'package:flutter/material.dart';

class ScreenFortyEight extends StatefulWidget {
  const ScreenFortyEight({super.key});

  @override
  State<ScreenFortyEight> createState() => _ScreenFortyEightState();
}

class _ScreenFortyEightState extends State<ScreenFortyEight> {
  bool containerColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        elevation: 3,
        title: const Text(
          "change text",
          style: TextStyle(
              color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network("https://i.ibb.co/tDVbCCW/simplife-logo1.png"),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF222222),
                  ),
                ),
                Switch(
                  value: containerColor,
                  onChanged: (value)=>setState(()=>containerColor=value),
                ),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                ),
              ]
          ),
          Text(containerColor?'amber color':'black color',
          style: TextStyle(
            color: containerColor?Colors.amber: const Color(0xFF222222),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          )
        ],
      ),
    );
  }
}
