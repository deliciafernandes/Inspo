import 'package:flutter/material.dart';
import 'package:inspo_app/UI_Screens/Day8/Day8.dart';

import 'Homepage.dart';
import 'UI_Screens/Day1/Day1.dart';
import 'UI_Screens/Day2/Day2.dart';
import 'UI_Screens/Day3/Day3.dart';
import 'UI_Screens/Day4/Day4.dart';
import 'UI_Screens/Day5/Day5.dart';
import 'UI_Screens/Day6/Day6.dart';
import 'UI_Screens/Day7/Day7.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: HomePage.id,
      initialRoute: Day8.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        Day1.id: (context) => Day1(),
        Day2.id: (context) => Day2(),
        Day3.id: (context) => Day3(),
        Day4.id: (context) => Day4(),
        Day5.id: (context) => Day5(),
        Day6.id: (context) => Day6(),
        Day7.id: (context) => Day7(),
        Day8.id: (context) => Day8(),
      },
    );
  }
}
