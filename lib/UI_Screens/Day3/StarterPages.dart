import 'package:flutter/material.dart';

const Color kScaffoldColor = Color(0xffF5F5F5);

class StarterPages extends StatefulWidget {
  @override
  _StarterPagesState createState() => _StarterPagesState();
}

class _StarterPagesState extends State<StarterPages> {
  List<bool> isSelected;
  List<String> foodItems = ['Pizza', 'Burger', 'Kebab', 'Dessert', 'Salad'];

  @override
  initState() {
    super.initState();
    // initialize the selected buttons
    isSelected = List<bool>.generate(foodItems.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldColor,
      appBar: AppBar(
        automaticallyImplyLeading: false, // removes pop button on app bar
        backgroundColor: kScaffoldColor,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.shopping_basket,
              color: Color(0xff4C4C4C),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Food Delivery',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 45,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: foodItems.asMap().entries.map((entry) {
                  return TButton(
                      isClicked: isSelected[entry.key],
                      foodItem: entry.value,
                      onPressed: () {
                        setState(() {
                          isSelected[entry.key] = !isSelected[entry.key];
                        });
                      });
                }).toList(),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Free Delivery',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FoodCard(
                      'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  FoodCard(
                      'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  FoodCard(
                      'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  FoodCard(
                      'https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  FoodCard(
                      'https://images.pexels.com/photos/2679501/pexels-photo-2679501.jpeg?cs=srgb&dl=cooked-food-in-bow-2679501.jpg&fm=jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  FoodCard(this.url);
  final String url;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(url),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.3)
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 25.0,
                  ),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '\$ 13.00',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Vegetarian Pizza',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TButton extends StatelessWidget {
  final bool isClicked;
  final String foodItem;

  /// OnPressed is passed from the parent. This can be changed to handle it using any state management.
  final Function onPressed;

  TButton(
      {@required this.isClicked,
      @required this.foodItem,
      @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
        color: isClicked ? Colors.orange[300] : Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: FlatButton(
        splashColor: Colors.orange[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Text(
            foodItem,
            style: TextStyle(
              fontSize: 20.0,
              color: isClicked ? Colors.white : Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }
}
