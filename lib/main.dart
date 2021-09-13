import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/src/binding/binding_page.dart';
// ignore: unused_import
import 'package:sample_sns_login/src/controller/count_controller_with_getx.dart';
// ignore: unused_import
import 'package:sample_sns_login/src/controller/dependency_controller.dart';
import 'package:sample_sns_login/src/pages/binding.dart';
import 'package:sample_sns_login/src/pages/named/first_named.dart';
import 'package:sample_sns_login/home.dart';
import 'package:sample_sns_login/src/next.dart';
import 'package:sample_sns_login/src/pages/named/second_named.dart';
import 'package:sample_sns_login/src/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => Home(),
      //   "/first": (context) => FirstNamedPage(),
      //   "/second": (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(name: "/", page: () => Home(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => FirstNamedPage(),
            transition: Transition.leftToRight),
        GetPage(
            name: "/second",
            page: () => SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/next",
            page: () => NextPage(),
            transition: Transition.leftToRight),
        GetPage(
            name: "/user/:uid",
            page: () => UserPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/binding",
            page: () => BindingPage(),
            binding: BindingInBindingPage(),
            transition: Transition.zoom)
      ],
    );
  }
}
