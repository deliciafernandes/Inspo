import 'package:flutter/material.dart';
import 'FadeInAnimationX.dart';
import 'StarterPages.dart';

class Day3 extends StatelessWidget {
  static String id = '/3';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.66),
            BlendMode.dstATop,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.6, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ],
            ),
          ),
          child: SafeArea(
            child: FadeAnimationX(
              delay: 1.0,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Taking Orders For Faster Delivery',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'See restaurants nearby by',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 17.0,
                      ),
                    ),
                    Text(
                      'adding your location',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 17.0,
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.orange],
                          stops: [0.4, 1],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StarterPages()),
                          );
                        },
                        child: Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Now Deliver To Your Door 24/7',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
