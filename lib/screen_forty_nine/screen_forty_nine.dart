import 'package:flutter/material.dart';

class ScreenFortyNine extends StatefulWidget {
  const ScreenFortyNine({super.key});

  @override
  State<ScreenFortyNine> createState() => _ScreenFortyNineState();
}

class _ScreenFortyNineState extends State<ScreenFortyNine> {
  bool containerColor = false;
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
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: containerColor?Colors.amber: const Color(0xFF222222),
            ),
            child: Text(containerColor?'amber color':'dark color',
              style: TextStyle(
                color: containerColor?const Color(0xFF222222): Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
