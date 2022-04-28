import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class Day6 extends StatefulWidget {
  static const String id = '/6';

  @override
  _Day6State createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  late List<bool> isClicked;
  List destinations = [
    {
      'url':
          'https://cdn.pixabay.com/photo/2016/11/29/07/59/architecture-1868265__340.jpg',
      'destinationName': 'Golden Gate Bridge',
      'distance': '2.1 Km',
    },
    {
      'url':
          'https://images.pexels.com/photos/258447/pexels-photo-258447.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'destinationName': 'Union Square',
      'distance': '3.5 Km',
    },
    {
      'url':
          'https://images.pexels.com/photos/315458/pexels-photo-315458.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'destinationName': 'Lombard Street',
      'distance': '4.0 Km',
    },
  ];

  Widget makePoint({top, left}) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.white.withOpacity(0.3)),
        child: Animator<double>(
          duration: Duration(seconds: 1),
          tween: Tween<double>(begin: 4.0, end: 6.0),
          cycles: 0,
          builder: (context, anim, child) {
            return Center(
              child: Container(
                margin: EdgeInsets.all(anim.value),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  initState() {
    super.initState();
    // initialize the selected buttons
    isClicked = List<bool>.generate(destinations.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1480843669328-3f7e37d196ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.3),
              ],
            ),
          ),
          child: SafeArea(
            bottom: true,
            top: false,
            left: true,
            right: true,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: _height / 4.2,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: destinations.asMap().entries.map((entry) {
                        return MapListViewTile(
                            url: entry.value['url'],
                            destinationName: entry.value['destinationName'],
                            distance: entry.value['distance'],
                            isClicked: isClicked[entry.key],
                            onTap: () {
                              setState(() {
                                isClicked[entry.key] = !isClicked[entry.key];
                              });
                            });
                      }).toList(),
                    ),
                  ),
                ),
                //Put longitudes and latitudes
                makePoint(top: 140.0, left: 40.0),
                makePoint(top: 190.0, left: 190.0),
                makePoint(top: 219.0, left: 60.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MapListViewTile extends StatelessWidget {
  final String url;
  final String distance;
  final String destinationName;
  final bool isClicked;
  final VoidCallback onTap;

  MapListViewTile(
      {required this.url,
      required this.distance,
      required this.destinationName,
      required this.isClicked,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return Container(
      width: _width / 2.2,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1.1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(url),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffE9E9E8),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(left: 15.0),
                child: Text(distance),
              ),
            ],
          ),
          Text(
            destinationName,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black87,
              fontWeight: FontWeight.w700,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: onTap,
              child: Icon(isClicked ? Icons.star : Icons.star_border_outlined,
                  color: Colors.yellow, size: 28.0),
            ),
          ),
        ],
      ),
    );
  }
}
