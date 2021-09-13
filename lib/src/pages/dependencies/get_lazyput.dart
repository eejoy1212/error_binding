import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/src/controller/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get.lazyPut"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.find<DependencyController>().lazyput();
          },
          child: Text("lazyput"),
        ),
      ),
    );
  }
}
