import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MyController(), fenix: true);
    Get.put(MyController(), tag: 'hello');
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
              onPressed: () => Get.to(() => const CountPage()),
              icon: const Icon(Icons.keyboard_arrow_right))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            OutlinedButton(
                onPressed: () => Get.to(() => const CountPage()),
                child: const Text("Next >>"))
          ],
        ),
      ),
    );
  }
}

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final myC = Get.find<MyController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Page"),
        actions: [
          IconButton(
              onPressed: () => Get.to(() => const TextPage()),
              icon: const Icon(Icons.keyboard_arrow_right))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${myC.count}",
                  style: const TextStyle(fontSize: 25),
                )),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => myC.increment()),
    );
  }
}

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final myC = Get.find<MyController>(tag: 'hello');
    final myCNotTag = Get.find<MyController>();
    final c = Get.put(MyController(), tag: 'joko');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: myC.textController,
            ),
            TextFormField(
              controller: myCNotTag.textController,
            ),
            TextFormField(
              controller: c.textController,
            )
          ],
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;
  final textController = TextEditingController();

  void increment() {
    count++;
  }
}
