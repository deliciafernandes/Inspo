import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.grey[800], fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/5060987/pexels-photo-5060987.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                scale: 1,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 30.0, bottom: 40.0, right: 20.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: _width / 2.3,
                  height: _width / 2.3,
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    // color: ,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      colors: [Color(0xff3499F3), Color(0xff5CB0F3)],
                      stops: [0.3, 0.7],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Steps',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: _width / 11,
                        ),
                      ),
                      Text(
                        '3,500',
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: _width / 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: _width / 2.3,
                  height: _width / 2.3,
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    // color: ,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      colors: [Color(0xffEA3C64), Color(0xffEF736C)],
                      stops: [0.3, 0.7],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Sports',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: _width / 11,
                        ),
                      ),
                      Text(
                        '25 Mins.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: _width / 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 40.0),
            Text(
              'Health Category',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 20,
                      ),
                    ),
                    Divider(thickness: 1.0),
                    Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 20,
                      ),
                    ),
                    Divider(thickness: 1.0),
                    Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 20,
                      ),
                    ),
                    Divider(thickness: 1.0),
                    Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 20,
                      ),
                    ),
                    Divider(thickness: 1.0),
                    Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 20,
                      ),
                    ),
                    Divider(thickness: 1.0),
                    Text(
                      'Activity',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
