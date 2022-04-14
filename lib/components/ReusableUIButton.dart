import 'package:flutter/material.dart';

class ReusableHomePageButton extends StatelessWidget {
  final Color color;
  final int day;

  ReusableHomePageButton({
    required this.color,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45.0),
            side: BorderSide(color: color),
          ),
          backgroundColor: color.withOpacity(.1),
          primary: color.withOpacity(.7),
          padding: EdgeInsets.all(16.0),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/$day');
        },
        child: Text(
          "UI DAY $day",
          style: TextStyle(
            fontSize: 20.0,
            color: color,
          ),
        ),
      ),
    );
  }
}
