import 'package:flutter/material.dart';
import 'package:flutter_basic_01/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the First Screen'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      // Navigator.of(context) 이것은, 현재 위젯인 Scaffold 화면에서 이동하겠다는 뜻.
                      // .push로 화면 이동 구현, push말 그대로 다음 화면을 쌓겠다는 의미.
                      // MaterialPageRoute에는 새로운 화면 SecondScreen을 빌드하는 방식으로 새 화면으로 이동하겠다는 내용 작성.
                      builder: (BuildContext context) => SecondScreen()));
                },
                child: Text('Go To Second Screen'))
          ],
        ),
      ),
    );
  }
}
