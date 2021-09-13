import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/src/controller/dependency_controller.dart';

class GetCreate extends StatelessWidget {
  const GetCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print(Get.find<DependencyController>().hashCode);
            Get.find<DependencyController>().create();
          },
          child: Text("Get.create"),
        ),
      ),
    );
  }
}
