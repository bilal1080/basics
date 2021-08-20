import 'package:flutter/material.dart';

import 'ongenerateRoute.dart';
// import 'package:flutter_medium/screen1.dart';
// import 'package:flutter_medium/screen2.dart';
// import 'package:flutter_medium/secondScreen.dart';
// import 'package:flutter_medium/todos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
     onGenerateRoute: RouteGenerator.generateRoute,
      
    );
  }
}
