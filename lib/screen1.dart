import 'package:flutter/material.dart';
import 'package:flutter_medium/screen2.dart';


class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

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
            Navigator.of(context).pushNamed(
              '/second',
              arguments: 'Hello there aaa the first page!',
            );
          },
        ),
      ),
    );
  }
}
