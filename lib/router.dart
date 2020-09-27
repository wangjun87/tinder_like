import 'package:flutter/material.dart';

import 'views/home.dart';

const String home = '/';
const String resturantDetails = '/food_details';

Route<dynamic> genetateRoute(RouteSettings settings) {
  switch(settings.name) {
    case home:
      return MaterialPageRoute(builder: (_) => HomePage());
    case resturantDetails:
      return MaterialPageRoute(builder: (_) => HomePage());
    default:
      return MaterialPageRoute(builder: (_) => HomePage());
  }
}