import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

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
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // SearchBar(
            //   onSearch: (String text) {},
            //   onItemFound: (item, int index) {},
            // ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220.0,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
