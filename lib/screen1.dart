import 'package:flutter/material.dart';
import 'package:flutter_medium/screen2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenTwo(),
                ));
          },
          child: Hero(
            tag: 'heroimage',
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
        ),
      
    );
  }
}