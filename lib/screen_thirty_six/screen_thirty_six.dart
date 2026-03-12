import 'package:flutter/material.dart';

class ScreenThirtySix extends StatefulWidget {
  const ScreenThirtySix({super.key});

  @override
  State<ScreenThirtySix> createState() => _ScreenThirtySixState();
}

class _ScreenThirtySixState extends State<ScreenThirtySix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1D38),
      appBar: AppBar(
        backgroundColor: const Color(0xFF222222),
        elevation: 3,
        title: const Text(
          "Login Screen",
          style: TextStyle(
              color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network("https://i.ibb.co/tDVbCCW/simplife-logo1.png"),
            SizedBox(height: 40,),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter Your ID",
                hintStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                suffixIcon: const Icon(Icons.account_circle,
                    color: Colors.amber, size: 30),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.amber, width: 4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.amber, width: 4),
                ),
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                suffixIcon:
                const Icon(Icons.visibility, color: Colors.amber, size: 30),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.amber, width: 4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.amber, width: 4),
                ),
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(90, 40),
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
                onPressed: (){},
                child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),)
            ),
          ],
        ),
      ),
    );
  }
}
