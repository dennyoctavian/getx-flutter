import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CounterController>(
                id: "joni",
                init: CounterController(),
                initState: (_) {},
                builder: (controller) {
                  return Text(
                    "Angka ${controller.count}",
                    style: const TextStyle(
                      fontSize: 35,
                    ),
                  );
                },
              ),
              GetBuilder<CounterController>(
                init: CounterController(),
                initState: (_) {},
                builder: (controller) {
                  return Text(
                    "Angka ${controller.count}",
                    style: const TextStyle(
                      fontSize: 35,
                    ),
                  );
                },
              ),
              GetBuilder<CounterController>(
                id: "budi",
                init: CounterController(),
                initState: (_) {},
                builder: (controller) {
                  return Text(
                    "Angka ${controller.count}",
                    style: const TextStyle(
                      fontSize: 35,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.find<CounterController>().add();
          },
        ),
      ),
    );
  }
}

class CounterController extends GetxController {
  var count = 0;

  void add() {
    count++;
    update(['joni', 'budi']);
  }
}
