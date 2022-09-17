import 'package:flutter/material.dart';
import 'package:stocker/pages/home.dart';

class StockerRoutes {
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    StockerRoutes.home: (context) => const StockerDashBoard(),
  };
}