import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class User {
  late String name;
  late int age;
  User({required this.name, required this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  // ignore: unused_field
  RxDouble _double = 0.0.obs;
  RxString value = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: "원희", age: 26).obs;
  RxList list = [""].obs;
  void increase() {
    count++;

    nums(NUM.SECOND);
    user(User(name: "원희", age: 26));
    user.update((_user) {
      _user!.name = "다람쥐";
    });
    // list.addAll();
    // list.add();
    list.addIf(user.value.name == "개발하는 원희", "ok");
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (_) => print("매번호출"));
    once(count, (_) => print("한번만 호출"));
    debounce(count, (_) => print("마지막 변경에 한번만 호출"), time: Duration(seconds: 1));
    interval(count, (_) => print("변경되고 있는 동안 1초마다 호출"),
        time: Duration(seconds: 1));
    super.onInit();
  }
}
