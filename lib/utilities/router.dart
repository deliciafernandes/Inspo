import 'package:flutter/material.dart';
import 'package:inspo/home_page.dart';
import 'package:inspo/utilities/routing_constants.dart';

import '../UI_Screens/scratch_screen.dart';
import '../UI_Screens/undefined_screen.dart';

// The MaterialApp provides you with a property called onGenerateRoute where you can pass in a Function that returns a Route<dynamic> and takes in RouteSettings.
Route<dynamic> generateRoute(RouteSettings settings) {
  // The settings contain the route information of the requested route. It provides two key things to us: the name and the arguments.

  switch (settings.name) {
    // case kScreenName:
    //   return MaterialPageRoute(builder: (_) => const ScreenName());

    //Main screens
    case kHomePage:
      return MaterialPageRoute(builder: (_) => HomePage());

    //others
    case kScratchScreen:
      return MaterialPageRoute(builder: (_) => ScratchScreen());

    default:
      return MaterialPageRoute(
        builder: (_) => UndefinedScreen(pageName: settings.name),
      );
  }
}
