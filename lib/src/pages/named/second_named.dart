import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두번째 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("기존_뒤로 이동"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("GetX_뒤로 이동"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => Home()),
                    (route) => false);
              },
              child: Text("기존_홈 이동"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/");
                // Get.offAll(Home());
              },
              child: Text("GetXNamed_홈 이동"),
            )
          ],
        ),
      ),
    );
  }
}
