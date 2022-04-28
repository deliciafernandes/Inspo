import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'components/ReusableUIButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _list = [
    Text(
      DateFormat("EEEE d LLLL").format(DateTime.now()).toUpperCase(),
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
      ),
    ),
    const Text(
      '100 DAYS UI CHALLENGE',
      style: TextStyle(
          fontWeight: FontWeight.w800, fontSize: 18.0, color: Colors.grey),
    ),
    const Text(
      'Welcome back, Delicia !',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      ),
    ),
    const SizedBox(
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
      color: Colors.yellow,
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
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          children: _list,
        ),
      ),
    );
  }
}

//VIBGYOR
