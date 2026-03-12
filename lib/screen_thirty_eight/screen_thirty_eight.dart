import 'package:flutter/material.dart';

class ScreenThirtyEight extends StatefulWidget {
  const ScreenThirtyEight({super.key});

  @override
  State<ScreenThirtyEight> createState() => _ScreenThirtyEightState();
}

class _ScreenThirtyEightState extends State<ScreenThirtyEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        elevation: 3,
        title: const Text(
          "floatingActionButton",
          style: TextStyle(
              color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF222222),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.amber,
          size: 30,
        ),
      ),
    );
  }
}
