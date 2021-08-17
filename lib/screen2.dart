import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Hero(
                tag: 'heroimage',
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                ),
              ),
            )),
      ),
    );
  }
}
