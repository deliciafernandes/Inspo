import 'package:flutter/material.dart';
import 'package:inspo_app/UI_Screens/Day2/animations/FadeInAnimationY.dart';
import 'VideoCard.dart';
import 'package:url_launcher/url_launcher.dart';

const TextStyle kTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
  color: Colors.white,
);
const TextStyle kBodyTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
  color: Colors.white70,
);
const TextStyle kLinkTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w600,
  color: Colors.blue,
);

class Day4 extends StatelessWidget {
  static String id = '/4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://media.gettyimages.com/photos/former-first-lady-michelle-obama-speaks-onstage-at-the-2017-espys-at-picture-id813549156?s=2048x2048'),
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
                    Colors.black.withOpacity(.2)
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: CustomScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.height / 1.8,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: FadeAnimationY(
                          delay: 1.0,
                          child: Text(
                            'Michelle Obama',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    FadeAnimationY(
                      delay: 1.0,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Michelle Obama, a lawyer and writer who was the first lady of the United States from 2009 to 2017. She is the wife of the 44th U.S. president, Barack Obama. As first lady, Michelle focused her attention on social issues such as poverty, healthy living and education. Her 2018 memoir, Becoming, discusses the experiences that shaped her, from her childhood in Chicago to her years living in the White House.',
                              style: kBodyTextStyle,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: Text(
                                'Born',
                                style: kTitleTextStyle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                'January 17, 1964, in Chicago, Illinois.',
                                style: kBodyTextStyle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: Text(
                                'Nationality',
                                style: kTitleTextStyle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                'American',
                                style: kBodyTextStyle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: Text(
                                'Videos',
                                style: kTitleTextStyle,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  VideoCards(
                                      'https://images.unsplash.com/photo-1544650039-22886fbb4323?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80'),
                                  VideoCards(
                                      'https://media.gettyimages.com/photos/first-lady-of-the-united-states-michelle-obama-speaks-onstage-during-picture-id467968914?s=2048x2048'),
                                  VideoCards(
                                      'https://media.gettyimages.com/photos/former-first-lady-of-the-united-states-michelle-obama-watches-the-picture-id857192646?s=2048x2048'),
                                  VideoCards(
                                      'https://media.gettyimages.com/photos/first-lady-michelle-obama-acknowledges-the-crowd-before-delivering-picture-id580960330?s=2048x2048'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30.0),
                              child: Text(
                                'Donate to her foundations',
                                style: kTitleTextStyle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: InkWell(
                                  child: Text(
                                    'Obama Foundation',
                                    style: kLinkTextStyle,
                                  ),
                                  onTap: () =>
                                      launch('https://www.obama.org/')),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: InkWell(
                                  child: Text(
                                    'Joining Forces',
                                    style: kLinkTextStyle,
                                  ),
                                  onTap: () => launch(
                                      'https://obamawhitehouse.archives.gov/joiningforces')),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: InkWell(
                                  child: Text(
                                    'Healthy child, Healthy world',
                                    style: kLinkTextStyle,
                                  ),
                                  onTap: () =>
                                      launch('https://healthychild.org/')),
                            ),
                            SizedBox(
                              height: 80.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 16.0,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45.0),
              ),
              color: Color(0xffF8C145),
              splashColor: Color(0xffF8C145).withOpacity(.9),
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15.0),
              onPressed: () {
                //Follow functionality
                launch('https://www.instagram.com/michelleobama/');
              },
              child: Text(
                'Follow',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
