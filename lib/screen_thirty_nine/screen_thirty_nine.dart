import 'package:flutter/material.dart';

class ScreenThirtyNine extends StatefulWidget {
  const ScreenThirtyNine({super.key});

  @override
  State<ScreenThirtyNine> createState() => _ScreenThirtyNineState();
}

class _ScreenThirtyNineState extends State<ScreenThirtyNine> {
  int score = 0;
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 60,
        child: FloatingActionButton.extended(
          extendedPadding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
          backgroundColor: const Color(0xFF222222),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () => setState(() => score++),
          label: const Text("Increase Score",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
          icon: const Icon(Icons.add,color: Colors.amber,size: 30,),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network("https://i.ibb.co/tDVbCCW/simplife-logo1.png"),
          Text("Student Score $score",style: TextStyle(color: Colors.amber,fontSize: 24,fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
