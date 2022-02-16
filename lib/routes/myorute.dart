import 'package:exprienseone/screens/homepage.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());

    }
  }
}
