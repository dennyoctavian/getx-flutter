import 'package:belajar_getx/controllers/counter_controller.dart';
import 'package:belajar_getx/controllers/person_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final personController = Get.put(PersonController());
    final counterController = Get.put(CounterController());

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CounterController>(
                init: CounterController(),
                initState: (_) {},
                builder: (controller) {
                  return Text(
                    "Angka ${controller.integer}",
                    style: const TextStyle(
                      fontSize: 35,
                    ),
                  );
                },
              ),
              GetX<CounterController>(
                init: CounterController(),
                initState: (_) {},
                builder: (controller) {
                  return Text(
                    "Angka ${controller.count.value}",
                    style: const TextStyle(
                      fontSize: 35,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Obx(() => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nama saya ${personController.person.name}",
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        "Nama saya ${personController.orang.value.name}",
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        "Angka ${counterController.count.value}",
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            personController.changeUpperCase();
            personController.changeUpperCaseObjectClass();
            counterController.increment();
            Get.find<CounterController>().increment();
            Get.find<CounterController>().nambah();
          },
        ),
      ),
    );
  }
}
