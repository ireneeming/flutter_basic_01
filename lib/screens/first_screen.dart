import 'package:flutter/material.dart';

// StatefulWidget 구조
// StatefulWidget은 상태(state)를 포함한 위젯
//

class FirstScreen extends StatefulWidget {
  // class 생성 시 StatefulWidget을 상속받음
  _FirstScreenState createState() =>
      _FirstScreenState(); // createState() 라는 메서드를 사용
}

class _FirstScreenState extends State<FirstScreen> {
  // State도 플러터 내부에 선언된 클래스, 이를 상속받아 _FirstScreenState라는 클래스 생성. FirstScreen에 대한 state임을 알려주기 위해 <FirstScreen>이라 명시
  @override
  void initState() {
    // state 초기화 단계.필수는 아님. super.initState()를 통해 부모 클래스의 initState() 메서드를 함께 실행.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(),
    );
  }

  @override
  void dispose() {
    // 사용된 위젯이 사라질 때 실행되는 단계. 앞선 단계에서 사용한 데이터 정리해야 할 때 사용.
    super.dispose();
  }
}
