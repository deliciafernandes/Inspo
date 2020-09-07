import 'package:flutter/material.dart';

class EventHomeScreen extends StatelessWidget {
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
            margin: EdgeInsets.only(right: 10.0),
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
    );
  }
}
