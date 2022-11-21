import 'package:flutter/material.dart';
import 'c_page.dart';


void main() => runApp(BPage());

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是第 2 頁'),
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
          Image.asset('2.jpg'),
          ElevatedButton(
            child: Text('跳到 3 頁'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CPage()));
            },
          ),
        ],
      ),
    );
  }
}
