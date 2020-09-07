import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'Dashboard.dart';

class Day7 extends StatelessWidget {
  static String id = '/7';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/2479184/pexels-photo-2479184.jpeg?cs=srgb&dl=pexels-derick-santos-2479184.jpg&fm=jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.2)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 70.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Exercise',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '15',
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow),
                    ),
                    Text(
                      'Minutes',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3',
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow),
                    ),
                    Text(
                      'Exercises',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Start your mornings feeling stronger!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 30.0),
                      FloatingActionButton(
                        elevation: 10.0,
                        backgroundColor: Color(0xff3197F3).withOpacity(0.5),
                        splashColor: Color(0xff3197F3).withOpacity(0.2),
                        onPressed: () => Navigator.push(
                          context,
                          PageTransition(
                            curve: Curves.linear,
                            type: PageTransitionType.fade,
                            alignment: Alignment.topCenter,
                            child: Dashboard(),
                          ),
                        ),
                        child: Icon(
                          Icons.touch_app_outlined,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
