import 'package:flutter/material.dart';
import 'package:inspo_app/UI_Screens/Day8/EventHomeScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'animations/FadeAnimationYbottom.dart';

class Day8 extends StatefulWidget {
  static String id = '/8';

  @override
  _Day8State createState() => _Day8State();
}

class _Day8State extends State<Day8> with SingleTickerProviderStateMixin {
  AnimationController _scaleController;

  Animation<double> _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    super.initState();

    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                  context,
                  PageTransition(
                      child: EventHomeScreen(), type: PageTransitionType.fade));
            }
          });
  }

  @override
  void dispose() {
    super.dispose();

    _scaleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2017/07/21/23/57/concert-2527495_960_720.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.5, 1],
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.3)
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20.0, bottom: 40.0),
              child: FadeAnimationYDownToUp(
                delay: 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Find the best party hotspots near you with one click',
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Find your event of interest',
                      style: TextStyle(fontSize: 20.0, color: Colors.white70),
                    ),
                    SizedBox(height: 230.0),
                    RaisedButton(
                      elevation: 3.0,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      onPressed: () {},
                      color: Color(0xffF8C145),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Party on!',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
