// ignore: unused_import
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
// ignore: unused_import
import 'package:sample_sns_login/src/controller/count_controller_with_getx.dart';
// ignore: unused_import
import 'package:sample_sns_login/src/controller/count_controller_with_provider.dart';
import 'package:sample_sns_login/src/controller/count_controller_with_reactive.dart';
// ignore: unused_import
import 'package:sample_sns_login/src/pages/state/with_getx.dart';
// ignore: unused_import
import 'package:sample_sns_login/src/pages/state/with_provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GetX",
              style: TextStyle(fontSize: 30),
            ),
            Obx(() {
              return Text(
                "${Get.find<CountControllerWithReactive>().count.value}",
                style: TextStyle(fontSize: 50),
              );
            }),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
              child: Text(
                "+",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
              child: Text(
                "5로 변경",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
