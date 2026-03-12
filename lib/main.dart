import 'package:flutter/material.dart';
import 'package:simp_life_tasks/screen_forty/screen_forty.dart';
import 'package:simp_life_tasks/screen_forty_eight/screen_forty_eight.dart';
import 'package:simp_life_tasks/screen_forty_five/screen_forty_five.dart';
import 'package:simp_life_tasks/screen_forty_four/screen_forty_four.dart';
import 'package:simp_life_tasks/screen_forty_nine/screen_forty_nine.dart';
import 'package:simp_life_tasks/screen_forty_one/screen_forty_one.dart';
import 'package:simp_life_tasks/screen_forty_seven/screen_forty_seven.dart';
import 'package:simp_life_tasks/screen_forty_six/screen_forty_six.dart';
import 'package:simp_life_tasks/screen_forty_three/screen_forty_three.dart';
import 'package:simp_life_tasks/screen_forty_two/screen_forty_two.dart';
import 'package:simp_life_tasks/screen_thirty/screen_thirty.dart';
import 'package:simp_life_tasks/screen_thirty_eight/screen_thirty_eight.dart';
import 'package:simp_life_tasks/screen_thirty_five/screen_thirty_five.dart';
import 'package:simp_life_tasks/screen_thirty_four/screen_thirty_four.dart';
import 'package:simp_life_tasks/screen_thirty_nine/screen_thirty_nine.dart';
import 'package:simp_life_tasks/screen_thirty_one/screen_thirty_one.dart';
import 'package:simp_life_tasks/screen_thirty_seven/screen_thirty_seven.dart';
import 'package:simp_life_tasks/screen_thirty_six/screen_thirty_six.dart';
import 'package:simp_life_tasks/screen_thirty_three/screen_thirty_three.dart';
import 'package:simp_life_tasks/screen_thirty_two/screen_thirty_two.dart';
import 'package:simp_life_tasks/screen_twenty_eight/screen_twenty_eight.dart';
import 'package:simp_life_tasks/screen_twenty_nine/screen_twenty_nine.dart';
import 'package:simp_life_tasks/screen_twenty_seven/screen_twenty_seven.dart';
import 'package:simp_life_tasks/screen_twenty_six/screen_twenty_six.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenFortyNine(),
    );
  }
}
