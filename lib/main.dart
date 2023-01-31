import 'package:flutter/material.dart';
import 'package:flutter_basic_01/screens/first_screen.dart'; // Material은 구글이 만든 스타일 도구이며, 외부 패키지 불러올 때 import 해서 갖고온다.

void main() {
  // main 함수, 플러터 프로젝트 실행할 때, 이 부분부터 실행.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 위에서 실행 한 MyApp을 정의하는 코드. extend 구문을 통해 상태가 없는 위젯(state less widget)을 상속하여 MyApp 클래스를 하나의 위젯처럼 만듬.
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 모든 위젯은 공통적으로 Widget build(BuldContext context) {} 메서드를 가지고 있음. 부모 위젯인 statelessWidget 혹은 statefulWidget의 메서드 이므로 @override 가 붙음.
    // BuildContext는 모든 위젯이 가지는 고유의 아이디값이라고 이해하면 됨.
    return MaterialApp(
      // Widget build() 의 리턴으로 MaterialApp() 위젯이 반환되고 있음. MaterialApp 은 말 그대로 Material 스타일의 App 위젯이며, 앱이라는 가장 큰 위젯이 시작되는 것.

      title: 'Screen Navigation Ex',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FirstScreen(),
    );
  }
}
