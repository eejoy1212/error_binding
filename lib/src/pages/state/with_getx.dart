import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/src/controller/count_controller_with_getx.dart';

// ignore: must_be_immutable
class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);
  // ignore: unused_field
  CountControllerWithGetX _countControllerWithGetX =
      Get.put(CountControllerWithGetX());

  Widget _button(String id) {
    return ElevatedButton(
      onPressed: () {
        Get.find<CountControllerWithGetX>().increase();
      },
      child: Text(
        "+",
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "GetX",
            style: TextStyle(fontSize: 30),
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          _button("first"),
          _button("second"),
          // ElevatedButton(
          //   onPressed: () {
          //     Get.find<CountControllerWithGetX>().increase();
          //   },
          //   child: Text(
          //     "+",
          //     style: TextStyle(fontSize: 30),
          //   ),
          // ),
        ],
      ),
    );
  }
}
