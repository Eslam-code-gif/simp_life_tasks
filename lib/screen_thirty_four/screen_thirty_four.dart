import 'package:flutter/material.dart';

class ScreenThirtyFour extends StatefulWidget {
   const ScreenThirtyFour({super.key});

  @override
  State<ScreenThirtyFour> createState() => _ScreenThirtyFourState();
}

class _ScreenThirtyFourState extends State<ScreenThirtyFour> {
 final List txt =["Bad","Good","well","Excellent"];
 String txtSelect = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        elevation: 3,
        title: Text("Gesture tap",
          style: TextStyle(
              color: Colors.amber,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: txt.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      txtSelect = txt[index];
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey.shade700,
                    child: Center(
                      child: Text("${txt[index]}",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                      ),
                    ),
                  ),
                );
              }
          ),
          ),
          SizedBox(height: 20,),
          Text("Iam Felling $txtSelect",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }
}
