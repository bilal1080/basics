import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_medium/todo.dart';

import 'new.dart';
//import 'ongenerateRoute.dart';
// import 'package:flutter_medium/screen1.dart';
// import 'package:flutter_medium/screen2.dart';
// import 'package:flutter_medium/secondScreen.dart';
 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(
        Todos : List.generate(
          10, (i) => Todo(
            'Todo $i',
            'A descriotion of what u need',
          )), 
      ),
    );
  }
}
