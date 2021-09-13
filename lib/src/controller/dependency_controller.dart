// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DependencyController extends GetxController {
  void lazyput() {
    print("Get.lazyPut의 인스턴스 생성");
  }

  void create() {
    print("Get.create의 인스턴스 생성");
  }
}
