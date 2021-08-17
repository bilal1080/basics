import 'package:flutter/material.dart';
import 'package:flutter_medium/screen2.dart';
import 'package:flutter_medium/student.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);
  static const Route = '/ScreenOne';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('click me'),
          onPressed: () {
            Navigator.pushNamed(context, ScreenTwo.Route,
                arguments: Student('Muhammad Bilal', 23));
          },
        ),
      ),
    );
  }
}
