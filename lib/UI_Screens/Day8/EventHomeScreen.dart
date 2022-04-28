import 'package:flutter/material.dart';

import '../Day2/animations/FadeInAnimationY.dart';
import 'models/Event.dart';

final EventDetails _details = EventDetails();

class EventHomeScreen extends StatelessWidget {
  static String id = '/EventHomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F8FD),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Color(0xffF6F8FD),
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          Container(
            width: 50.0,
            height: 10.0,
            margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?cs=srgb&dl=pexels-elle-hughes-1680172.jpg&fm=jpg')),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FadeAnimationY(
                delay: 0.5,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: _details.getLength(),
                  itemBuilder: (context, int index) {
                    return EventListTile(eventNumber: index);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventListTile extends StatelessWidget {
  final int eventNumber;

  EventListTile({required this.eventNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                _details.getDay(eventNumber),
                style: TextStyle(
                  color: Color(0xff40A2F3),
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
              Text(
                _details.getMonth(eventNumber),
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Material(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 220.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    _details.getImageUrl(eventNumber),
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.4,
                padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
                height: 220.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    stops: [0.5, 1],
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.3)
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${_details.getName(eventNumber)} ${_details.getYear(eventNumber)}',
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          _details.getTime(eventNumber),
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
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
