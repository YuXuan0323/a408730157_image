import 'package:flutter/material.dart';
import 'b_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是首頁'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('1.jpg'),
          ElevatedButton(
            child: Text('跳到 2 頁'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BPage()));
            },
          ),
        ],
      ),
    );
  }
}
