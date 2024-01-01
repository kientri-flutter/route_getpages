
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget{
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("세번째"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("first"),
              onPressed: (){
                Get.toNamed("/first");
              },
            ),
            ElevatedButton(
              child: Text("second"),
              onPressed: (){
                Get.toNamed("/second");
              },
            ),
            ElevatedButton(
              child: Text("third"),
              onPressed: (){
                Get.toNamed("/third");
              },
            ),
            ElevatedButton(
              child: Text("뒤로 이동"),
              onPressed: (){
                Get.back();
              },
            ),
            ElevatedButton(
              child: Text("Home으로 이동"),
              onPressed: (){
                Get.toNamed("/");
              },
            ),

          ],
        ),
      ),
    );
  }
}