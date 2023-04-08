import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final countController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
              onPressed: () => Get.to(() => const OtherPage()),
              icon: const Icon(Icons.refresh)),
        ],
      ),
      body: const Center(
        child: CountWidget(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        countController.increment();
      }),
    );
  }
}

class CountWidget extends StatelessWidget {
  const CountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      initState: (state) => debugPrint('initState'),
      didChangeDependencies: (state) => debugPrint('didChangeDependencies'),
      didUpdateWidget: (oldWidget, state) => debugPrint('didUpdateWidget'),
      dispose: (state) => debugPrint('dispose'),
      builder: (controller) {
        return Text("Angka ${controller.count}");
      },
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Page"),
        actions: [
          IconButton(
              onPressed: () => Get.to(() => TextPage()),
              icon: const Icon(Icons.refresh)),
        ],
      ),
      body: const Center(
        child: Text("Other Page"),
      ),
    );
  }
}

class CounterController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }
}

class TextPage extends StatelessWidget {
  TextPage({super.key});

  final textC = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Page"),
      ),
      body: TextFormField(
        controller: textC.myC,
      ),
    );
  }
}

class TextController extends GetxController {
  final myC = TextEditingController();
}
