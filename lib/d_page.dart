import 'package:flutter/material.dart';
import 'C_page.dart';


class DPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是 4 頁'),
      ),
      body: _DPage(),
    );
  }
}

class _DPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('4.jpg'),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {Navigator.push(
                context, MaterialPageRoute(builder: (context) => CPage()));},
            child: const Text('跳到第 3 頁'),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}