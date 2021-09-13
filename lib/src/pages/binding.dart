import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/src/controller/count_controller_with_getx.dart';

class BindingPage extends GetView<CountControllerWithGetX> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("binding"),
      ),
      body: Column(
        children: [
          GetBuilder<CountControllerWithGetX>(
            builder: (controller) {
              return Text(
                controller.count.toString(),
                style: TextStyle(fontSize: 40),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              controller.increase();
              // CountControllerWithGetX.to.increase("first");
              // Get.find<CountControllerWithGetX>().increase("first");
              controller.increase();
            },
            child: Text("카운트"),
          )
        ],
      ),
    );
  }
}
