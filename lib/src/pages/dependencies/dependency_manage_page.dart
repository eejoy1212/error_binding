import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/src/controller/dependency_controller.dart';
import 'package:sample_sns_login/src/pages/dependencies/get_create.dart';
import 'package:sample_sns_login/src/pages/dependencies/get_lazyput.dart';
import 'package:sample_sns_login/src/pages/dependencies/get_put.dart';
import 'package:sample_sns_login/src/pages/dependencies/get_putAsync.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("의존성 주입"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => GetPut(),
                    binding: BindingsBuilder(() {
                      Get.put(DependencyController());
                    }),
                  );
                },
                child: Text("Getput"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => GetLazyPut(),
                    binding: BindingsBuilder(() {
                      Get.lazyPut<DependencyController>(
                          () => DependencyController());
                    }),
                  );
                },
                child: Text("Get.lazyPut"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => GetAsyncPut(),
                    binding: BindingsBuilder(() {
                      Get.putAsync<DependencyController>(() async {
                        await Future.delayed(Duration(seconds: 5));
                        return DependencyController();
                      });
                    }),
                  );
                },
                child: Text("Get.putAsync"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => GetCreate(), binding: BindingsBuilder(() {
                    Get.create<DependencyController>(
                        () => DependencyController());
                  }));
                },
                child: Text("Get.create"),
              ),
            ],
          ),
        ));
  }
}
