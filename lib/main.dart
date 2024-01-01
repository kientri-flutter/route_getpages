import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/pages/first.dart';
import 'src/pages/second.dart';
import 'src/pages/third.dart';
import 'src/pages/getargs.dart';
import 'src/pages/getparams.dart';
import 'src/pages/getparams2.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/first", page: () => FirstPage()),
        GetPage(name: "/second", page: () => SecondPage()),
        GetPage(
            name: "/third",
            page: () => ThirdPage(),
            transition: Transition.zoom),
        GetPage(name: "/getargs", page: () => GetArgsPage()),
        GetPage(name: "/getparams/:uid", page: () => GetParamsPage()),
        GetPage(name: "/getparams2/:uid", page: () => GetParamsPage2()),
      ],
    );
  }
}
