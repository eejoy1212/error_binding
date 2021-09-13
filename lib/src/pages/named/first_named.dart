import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/src/pages/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SecondPage(),
                  ),
                );
              },
              child: Text("일반적인 라우트_두번째 페이지로 이동"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offNamed("/second");
              },
              child: Text("GetX_Named 방식_두번째 페이지로 이동"),
            )
          ],
        ),
      ),
    );
  }
}
