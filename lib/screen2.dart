import 'package:flutter/material.dart';
import 'package:flutter_medium/student.dart';

class ScreenTwo extends StatefulWidget {
  ScreenTwo({Key? key}) : super(key: key);
  static const Route = '/ScreenTwo';

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    Student? student = ModalRoute.of(context)!.settings.arguments as Student?;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Page 2'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('name : ${student!.name}'),
               Text('age : ${student.age}'),
            ],),)
      ),
    );
  }
}
