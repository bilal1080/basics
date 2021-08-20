import 'package:flutter/material.dart';
import 'package:flutter_medium/newTodopage.dart';
import 'package:flutter_medium/todo.dart';

class TodoScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const TodoScreen({
    Key? key,
    required this.Todos,
  }) : super(key: key);
  // ignore: non_constant_identifier_names
  final List<Todo> Todos;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo List'),
        ),
        body: ListView.builder(
            itemCount: Todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NewTodoPage(todo: Todos[index])));
                },
                title: Text(Todos[index].title),
              );
            }),
      ),
    );
  }
}
