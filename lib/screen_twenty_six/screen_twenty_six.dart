import 'package:flutter/material.dart';

class ScreenTwentySix extends StatelessWidget {
  const ScreenTwentySix({super.key});

  @override
  Widget build(BuildContext context) {
    final List char =['1','2','3','4','5','6','7','8','9','*','0','#'];
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
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.3),
                              blurRadius: 4,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child:Center(child: Text(char[index],
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                        )),
                      ),
                    );
                  },
                ),
              ),
            )
    );
  }
}
