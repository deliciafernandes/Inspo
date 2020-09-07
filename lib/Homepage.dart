import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'components/ReusableUIButton.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  static String id = '/';

  List<Widget> _list = [
    Text(
      '${DateFormat("EEEE d LLLL").format(DateTime.now()).toUpperCase()}',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
      ),
    ),
    Text(
      '100 DAYS UI CHALLENGE',
      style: TextStyle(
          fontWeight: FontWeight.w800, fontSize: 18.0, color: Colors.grey),
    ),
    Text(
      'Welcome back, Delicia !',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      ),
    ),
    SizedBox(
      height: 20.0,
    ),
    ReusableHomePageButton(
      color: Colors.deepPurple,
      day: 1,
    ),
    ReusableHomePageButton(
      color: Colors.indigo,
      day: 2,
    ),
    ReusableHomePageButton(
      color: Colors.blueAccent,
      day: 3,
    ),
    ReusableHomePageButton(
      color: Colors.green,
      day: 4,
    ),
    ReusableHomePageButton(
      color: Colors.yellow[500],
      day: 5,
    ),
    ReusableHomePageButton(
      color: Colors.orange,
      day: 6,
    ),
    ReusableHomePageButton(
      color: Colors.red,
      day: 7,
    ),
    ReusableHomePageButton(
      color: Colors.deepPurple,
      day: 8,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          children: _list,
        ),
      ),
    );
  }
}

//VIBGYOR
