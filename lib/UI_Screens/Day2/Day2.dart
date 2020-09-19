import 'package:flutter/material.dart';

import 'PageScreen.dart';

class Day2 extends StatefulWidget {
  static String id = '/2';

  @override
  _Day2State createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: <Widget>[
          PageScreen(_currentPage),
          PageScreen(_currentPage),
          PageScreen(_currentPage),
          PageScreen(_currentPage),
        ],
      ),
    );
  }
}
