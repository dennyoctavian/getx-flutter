import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            OutlinedButton(
                onPressed: () => Get.to(() => CountPage()),
                child: const Text("Next >>"))
          ],
        ),
      ),
    );
  }
}

class CountPage extends StatelessWidget {
  final count = 0.obs;
  CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "$count",
                  style: const TextStyle(fontSize: 25),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.putAsync<SharedPreferences>(() async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setInt('counter', 12345);
                count.value = prefs.getInt('counter') ?? 0;
                return prefs;
              })),
    );
  }
}
