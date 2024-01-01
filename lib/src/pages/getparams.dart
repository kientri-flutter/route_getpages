
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetParamsPage extends StatelessWidget{
  const GetParamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("parameters 전달받는 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['uid']}"),
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