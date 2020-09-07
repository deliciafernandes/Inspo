import 'package:flutter/material.dart';
import 'FadeInAnimationY.dart';
import 'Info.dart';

Info info = Info();

class PageScreen extends StatefulWidget {
  final int pageNumber;

  PageScreen(this.pageNumber);

  @override
  _PageScreenState createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen>
    with SingleTickerProviderStateMixin {
  final int totalPlaces = info.getTotalPlaceNumber();
  AnimationController controller;

  String buttonText = 'READ MORE';
  bool _toggle = true;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(info.getPlaceUrl(widget.pageNumber)),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.55, 0.9],
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      '${widget.pageNumber + 1}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      '/$totalPlaces',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Opacity(
                opacity: controller.value,
                child: FadeAnimationY(
                  delay: 1.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '${info.getPlaceName(widget.pageNumber)}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 20.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20.0,
                                  color: Colors.yellow,
                                ),
                                Icon(
                                  Icons.star_border,
                                  size: 20.0,
                                  color: Colors.white60,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '${info.getPlaceInfo(widget.pageNumber)}',
                              maxLines: _toggle ? 6 : 200,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              _toggle = !_toggle;
                              buttonText =
                                  (_toggle ? 'READ MORE' : 'READ LESS');
                            });
                          },
                          child: Text(
                            '$buttonText',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
