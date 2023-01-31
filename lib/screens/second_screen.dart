import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the Second Screen'),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // push의 반대 pop으로 뒤로가기 버튼 구현.
                },
                child: Text('Go To First Screen'))
          ],
        ),
      ),
    );
  }
}
