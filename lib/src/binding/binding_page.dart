import 'package:get/get.dart';
import 'package:sample_sns_login/src/controller/count_controller_with_getx.dart';

class BindingInBindingPage implements Bindings {
  @override
  void dependencies() {
    Get.put(() => CountControllerWithGetX());
  }
}
