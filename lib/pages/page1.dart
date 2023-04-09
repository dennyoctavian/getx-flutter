import 'package:belajar_getx/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Satu"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // push replacement
                  // Get.off(() => const PageDua());
                  // push and remove until
                  // Get.offAll(() => const PageDua());
                  Get.to(() => const PageDua(), arguments: "ini dari page 1");
                },
                child: const Text("Next Page >>"))
          ],
        ),
      ),
    );
  }
}
