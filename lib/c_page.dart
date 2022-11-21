import 'package:flutter/material.dart';
import 'b_page.dart';
import 'd_page.dart';

class CPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是第 3 頁'),
      ),
      body: _CPage(),
    );
  }
}

class _CPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('3.jpg'),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {Navigator.push(
                context, MaterialPageRoute(builder: (context) => BPage()));},
            child: const Text('跳到第 2 頁'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            child: Text('跳到第 4 頁'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DPage()));
            },
          ),
        ],
      ),
    );
  }
}
