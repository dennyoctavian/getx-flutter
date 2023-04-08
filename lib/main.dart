import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counterController = Get.put(CountController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          theme: counterController.isDark.value
              ? ThemeData.dark()
              : ThemeData.light(),
          home: const HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterController = Get.find<CountController>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text(
              "ANGKA ${counterController.counter.value}",
              style: const TextStyle(
                fontSize: 35,
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // counterController.increment();
          counterController.changeTheme();
        },
      ),
    );
  }
}
