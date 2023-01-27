import 'package:flutter/material.dart'; // Material은 구글이 만든 스타일 도구이며, 외부 패키지 불러올 때 import 해서 갖고온다.

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

      title: 'Flutter Demo',
      theme: ThemeData(
        // 내 앱의 테마
        // primarySwatch 의 Colors.blue -> Colors.green 으로 수정 후 저장하면 바로 반영되는데
        // 이를 Hot-Reload 라고 함. 상단 위에 번개모양
        // 가끔 저장해도 Hot-Reload 기능이 적용되지 않는 경우에는 다시 빌드해야 함.
        // 그럴 때는 Hot-Restart 번개모양 오른쪽 버튼 누르면 됨.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(
          title:
              'Flutter Demo Home Page'), // MaterialApp 의 home 프로퍼티. 홈페이지, 즉 첫 화면을 나타내는 위젯이 들어가야 함. home 프로퍼티에 들어간 위젯은 MyHomePage 위젯으로, StatefulWidget임.
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title; // final은 클래스 내 선언되는 플로퍼티가 생성할 때 처음 설정되고 변경되지 않을 값일 때 사용.
  List<Widget> myChildren = [];
  MyHomePage({super.key, required this.title});
  // title 이라는 프로퍼티를 함께 선언해주고, 내부에 this.title로 넣어줌. this는 해당 객체 내 값에 접근하기 위한 키워드.
  // required 는 꼭 선언해줘야 하는 값이라는 뜻. title의 기본값 선언 안해줬지 때믄에 required 가 필요함.

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 50; i++) {
      myChildren.add(Text('Hello, World!', style: TextStyle(fontSize: 25)));
    }
    return Scaffold(
        // Scaffold() 위젯. 앱 화면이 기본적으로 갖추고 있는 기능들을 선언해 놓은 위젯.
        appBar: AppBar(
          title: Text(
            title,
          ),
        ),
        body: Center(
            // child: Column(
            //   mainAxisAlignment:
            //       MainAxisAlignment.center, // flex 사용하여 justify-content 정렬방법과 비슷
            //   children: myChildren,
            // ),
            child: ListView(
          scrollDirection: Axis
              .horizontal, // scrollDirection 프로퍼티를 사용하면 쉽게 방향을 설정할 수 있다. Axis.horizontal를 쓰면 row를 대체하는 방법으로 쓸 수 있음.
          children: myChildren,
        )));
  }
}
