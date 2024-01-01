
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

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
              onPressed: (){
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => FirstPage(),
                // ))
                // 이렇게 써야 함. Get.to(FirstPage()); 또는 이하처럼

              },
            ),
            ElevatedButton(
              child: Text("second"),
              onPressed: (){},
            ),
            ElevatedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                //Navigator.of(context).pop();
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}