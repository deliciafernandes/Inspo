import 'package:flutter/material.dart';

class UndefinedScreen extends StatelessWidget {
  final dynamic pageName;
  UndefinedScreen({this.pageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No route defined for $pageName'),
      ),
    );
  }
}
