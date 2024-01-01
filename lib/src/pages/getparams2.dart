
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetParamsPage2 extends StatelessWidget{
  const GetParamsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("parameters 전달받는 페이지2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['uid']}"),
            Text("${Get.parameters['name']}님 안녕하세요."),
            Text("${Get.parameters['age']}살이면 얼마나 좋을까"),
            ElevatedButton(
              child: Text("뒤로 이동"),
              onPressed: (){
                //Navigator.of(context).pop();
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