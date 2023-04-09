import 'package:belajar_getx/pages/page4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Tiga"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back(result: "Ini dari page 3 loh");
                },
                child: const Text("BackPage >>")),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const PageEmpat());
                },
                child: const Text("Next Page >>"))
          ],
        ),
      ),
    );
  }
}
