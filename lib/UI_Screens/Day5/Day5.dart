import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'ButtonAnimation.dart';
import 'my_flutter_app_icons.dart';

const Color _color = Color(0xffbfbfbf);
const Color _backgroundColor = Color(0xfffafafa);

class Day5 extends StatefulWidget {
  static const String id = '/5';

  @override
  _Day5State createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  String dropdownValue = 'Fundamental ';

  bool status = false;
  bool isSelectedStar = false;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        elevation: 0.0,
        leading: Icon(Icons.more_vert, color: Colors.black),
        actions: [
          Row(
            children: <Widget>[
              Text(
                'BSE',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: status ? _color : Colors.black,
                ),
              ),
              SizedBox(width: 10.0),
              FlutterSwitch(
                width: 45.0,
                height: 25.0,
                toggleSize: 20.0,
                activeColor: Color(0xffe5e5e5),
                inactiveColor: Color(0xffe5e5e5),
                toggleColor: Colors.black,
                value: status,
                borderRadius: 30.0,
                onToggle: (value) {
                  setState(() {
                    status = value;
                  });
                },
              ),
              SizedBox(width: 10.0),
              Text(
                'NSE',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: status ? Colors.black : _color,
                ),
              ),
              SizedBox(width: 10.0),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'YES Bank LTD (YES B)',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Color(0xffa2a2a2),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '\$5,789.20',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Baseline(
                      baseline: 28.0,
                      baselineType: TextBaseline.ideographic,
                      child: Text(
                        '^',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff56b16e),
                        ),
                      ),
                    ),
                    Baseline(
                      baseline: 20.0,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        ' +4.00 (5.28%)',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff56b16f),
                        ),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    isSelectedStar ? Icons.star : Icons.star_border,
                    size: 35.0,
                    color: Color(0xffa2a2a2),
                  ),
                  onPressed: () {
                    setState(() {
                      isSelectedStar = !isSelectedStar;
                    });
                  },
                )
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: DropdownButtonHideUnderline(
                child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    icon: Icon(Icons.expand_more, color: Color(0xffa2a2a2)),
                    iconSize: 15,
                    elevation: 16,
                    style: TextStyle(color: Color(0xffa2a2a2)),
                    value: dropdownValue,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Fundamental ',
                      'test',
                      'test',
                      'test',
                      'test',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xffc4c4c5),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      dropdownValue,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13.0),
                    ),
                    SizedBox(height: 15.0),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Avg vol 3m',
                            style: TextStyle(
                                fontSize: 13.0,
                                color: _color,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Market cap',
                            style: TextStyle(
                                fontSize: 13.0,
                                color: _color,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Revenue',
                            style: TextStyle(
                                fontSize: 13.0,
                                color: _color,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(width: 30.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '5.05K',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.0),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            '139.79B',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.0),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            '163.95B',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.0),
                          ),
                        ],
                      ),
                      SizedBox(width: 40.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pe_ratio',
                            style: TextStyle(
                                fontSize: 13.0,
                                color: _color,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Beta',
                            style: TextStyle(
                                fontSize: 13.0,
                                color: _color,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 28.0),
                        ],
                      ),
                      SizedBox(width: 35.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '48.65',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.0),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            '2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13.0),
                          ),
                          SizedBox(height: 28.0),
                        ],
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
              width: double.infinity,
              height: 360.0,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.greenAccent],
                  begin: Alignment.bottomRight,
                  stops: [0.1, 0.7],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonAnimation(Colors.blueAccent[100], Colors.blueAccent),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonAnimation(Colors.pinkAccent[100], Colors.pinkAccent),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonAnimation(Colors.purpleAccent[100], Colors.purple),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.doc), title: Text('News')),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border, size: 30.0),
              title: Text('Watchlist')),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity, size: 30.0),
              title: Text('Profile')),
        ],
      ),
    );
  }
}
