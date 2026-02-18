import 'package:flutter/material.dart';

class ScreenTwentySeven extends StatelessWidget {
  const ScreenTwentySeven({super.key});

  @override
  Widget build(BuildContext context) {
    final List colors = const [
      Colors.pinkAccent,
      Colors.purpleAccent,
      Colors.deepPurpleAccent,
      Colors.indigoAccent,
      Colors.blue,
      Colors.cyan,
      Colors.teal,
      Colors.green,
      Colors.lightGreen,
      Colors.lime,
      Colors.yellow,
      Colors.amber,
      Colors.orange,
      Colors.deepOrangeAccent,
      Colors.deepOrange,
      Colors.red,
      Colors.pink,
      Colors.brown,
      Colors.grey,
      Colors.blueGrey,
    ];
   return Scaffold(
        backgroundColor: Color(0xFF222222),
        appBar: AppBar(
          backgroundColor: Color(0xFF222222),
          elevation: 3,
          title: Text("GridView",
            style: TextStyle(
                color: Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: colors.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1.5,
            ),
            itemBuilder: (context, index) {
              Color baseColor = colors[index];
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: baseColor.withValues(alpha: 0.25),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 35,
                      child: Placeholder(
                        color: baseColor,
                        strokeWidth: 2,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            '${index + 1}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
   );
  }
}
