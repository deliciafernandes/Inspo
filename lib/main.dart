import 'package:flutter/material.dart';
import 'package:inspo/utilities/routing_constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: kHomePage,
    );
  }
}
