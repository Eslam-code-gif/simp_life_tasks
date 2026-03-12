import 'package:flutter/material.dart';

class ScreenFifty extends StatefulWidget {
  const ScreenFifty({super.key});

  @override
  State<ScreenFifty> createState() => _ScreenFiftyState();
}

class _ScreenFiftyState extends State<ScreenFifty> {
  final List<String> countries =['Egypt','Canada','USA','Germany','Japan'];
  String selected ='Canada';
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
          DropdownButton(
            value: selected,
            icon: const Icon(Icons.keyboard_arrow_down),
              items: countries.map((String country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                );
              }).toList(),
            onChanged: (String? value) {
                setState(() {
                  selected = value??'Canada';
                });
            },
          ),
        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 18),
            children: [
              const TextSpan(
                text: 'Your Destination Country is : ',
                style: TextStyle(color: Colors.orange),
              ),
              TextSpan(
                text: selected,
                style: const TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ],
          ),
      ),
      ],
      ),
    );
  }
}
