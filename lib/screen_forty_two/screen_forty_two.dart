import 'package:flutter/material.dart';

class ScreenFortyTwo extends StatefulWidget {
  const ScreenFortyTwo({super.key});

  @override
  State<ScreenFortyTwo> createState() => _ScreenFortyTwoState();
}

class _ScreenFortyTwoState extends State<ScreenFortyTwo> {
  String? txt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        elevation: 3,
        title: const Text(
          "Show and hide",
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
          Text(txt??"",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber),),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  setState(() => txt=null);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF222222),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
                label: const Text(
                  'Hide Text',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: const Icon(Icons.visibility_off,color: Colors.white,),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() => txt="Text is showing");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF222222),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
                label: const Text(
                  'Show Text',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: const Icon(Icons.visibility,color: Colors.white,),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
