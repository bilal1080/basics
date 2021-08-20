import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String data;
  const ScreenTwo({Key? key,
  required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Page 2'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Second Page',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  data,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          )),
    
    );
  }
}