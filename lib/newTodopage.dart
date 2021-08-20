import 'package:flutter/material.dart';
import 'package:flutter_medium/todo.dart';

class NewTodoPage extends StatelessWidget {
  const NewTodoPage({Key? key, required this.todo}) : super(key: key);
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Description Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(todo.title),
              Text(todo.description),
              
            ],)
        ),
      ),
    );
  }
}
