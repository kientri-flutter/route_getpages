import 'package:flutter/material.dart';
import 'package:get/get.dart';
/*
import 'src/home.dart';
import 'src/second.dart';
*/

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("첫번째"),
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
                Get.toNamed("/first");
                //아니면 이렇게 Navigator.of(context).pushNamed("/first"); 그런데 로그가 안 찍힌다.
              },
            ),
            ElevatedButton(
              child: Text("second"),
              onPressed: () {
                //Get.to(SecondPage());
                Get.toNamed("/second");
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
              child: Text("Home으로 이동"),
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (_)=>Home() ),
                //     (route) => false);
                //Get.offAll(Home());
                Get.toNamed("/");

                // By the Named route, remove all screens and then, add a new screen.
                // 모든 화면 히스토리 지운다.
                //Get.offAllNamed("/";); // Navigation.pushNamedAndRemoveUntil()

                // By the Named route, add a new screen and then, remove the previous screen.
                // 새화면 띄우고 그 직전 화면 히스토리 지운다.
                //Get.offAndToNamed("/"); // Navigation.popAndPushNamed()

                // By the Named route, remove screens until satisfying the condition, and then, add a new screen.
                // 이건 약간 복잡, 쓰지 말자.
                //Get.offNamedUntil("/", (route) => false) // Navigation.pushNamedAndRemoveUntil()
              },
            ),
          ],
        ),
      ),
    );
  }
}
