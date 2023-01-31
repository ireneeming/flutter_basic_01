import 'package:flutter/material.dart';

// 클래스를 2개로 나눔
// StatefulWidget을 상속하는 FirstScreen 클래스, State를 상속하는 _FirstScreenState 클래스
// State를 사용하기 위해서는 StatefulWidget을 사용해야 함.
// StatefulWidget은 State를 상속받은 _FirstScreenState 클래스를 통해서 createState(상태를 생성)해야 함

class FirstScreen extends StatefulWidget {
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // State 정의하기
  int count = 0;

  // increase() 함수 작성 setState
  void increase() {
    setState(() {
      count += 1;
    });
  }

  void decrease() {
    setState(() {
      count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              '카운트: $count',
              style: TextStyle(fontSize: 25),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: decrease, child: const Text('- 감소')),
                ElevatedButton(onPressed: increase, child: const Text('+ 증가'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
