import 'package:belajar_getx/controller/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountPage extends StatelessWidget {
  final countC = Get.find<CountController>();

  CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Page"),
      ),
      body: Center(
        child: Obx(() => Text(
              "${countC.count}",
              style: const TextStyle(fontSize: 35),
            )),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        countC.increment();
      }),
    );
  }
}
