import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                onPressed: () {
                  // Get.to(
                  //   () => CountPage(),
                  //   binding: BindingsBuilder(
                  //     () {
                  //       Get.put(CountController());
                  //     },
                  //   ),
                  // );
                  Get.toNamed('/count');
                },
                child: const Text("Next >>"))
          ],
        ),
      ),
    );
  }
}
