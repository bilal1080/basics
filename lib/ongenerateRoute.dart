import 'package:flutter/material.dart';
import 'package:flutter_medium/main.dart';
import 'package:flutter_medium/screen1.dart';
import 'package:flutter_medium/screen2.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arg = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => ScreenOne());

      case '/second':
        if (arg is String) {
          return MaterialPageRoute(
              builder: (_) => ScreenTwo(
                    data: arg,
                  ),);
        }
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
