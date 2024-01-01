import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("first"),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => FirstPage(),
                // ))
                // 이렇게 써야 함. Get.to(FirstPage()); 또는 이하처럼
                Get.toNamed('/first');
              },
            ),
            ElevatedButton(
              child: Text("off AllNamed /second"),
              onPressed: () {
                Get.offAllNamed("/second");
              },
            ),
            ElevatedButton(
              child: Text("third"),
              onPressed: () {
                Get.toNamed("/third");
              },
            ),
            ElevatedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                //Navigator.of(context).pop();
                Get.back();
              },
            ),
            ElevatedButton(
              child: Text("getargs"),
              onPressed: () {
                Get.toNamed("/getargs", arguments: '철수');
                // 문자열, 숫자, 클래스 객체 모두 다 받음
              },
            ),
            ElevatedButton(
              child: Text("동적 url"),
              onPressed: () {
                Get.toNamed("/getparams/1919");
              },
            ),
            ElevatedButton(
              child: Text("동적 url getparams2"),
              onPressed: () {
                Get.toNamed("/getparams2/1919?name=철수&age=29");
              },
            ),
          ],
        ),
      ),
    );
  }
}
