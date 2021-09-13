import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/src/pages/dependencies/dependency_manage_page.dart';
import 'package:sample_sns_login/src/pages/normal/first.dart';
import 'package:sample_sns_login/src/reactive_state_manage_page.dart';
import 'package:sample_sns_login/src/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => FirstPage(),
                  ),
                );
              },
              child: Text("일반적인 라우트"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/first");
              },
              child: Text("Named 라우트"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/next",
                    arguments: User(
                      name: "동혁",
                      age: 31,
                    ));
              },
              child: Text("Argument 전달"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/user/121212?name=동혁이&age=31");
              },
              child: Text("동적URL 전달"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => SimpleStateManagePage());
              },
              child: Text("단순 상태관리"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ReactiveStateManagePage());
              },
              child: Text("반응형 상태관리"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => DependencyManagePage());
              },
              child: Text("의존성 관리"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/binding");
              },
              child: Text("바인딩 관리"),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User({required this.name, required this.age});
}
