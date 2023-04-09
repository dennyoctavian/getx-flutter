import 'package:belajar_getx/pages/page5.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Empat"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("BackPage >>")),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const PageLima());
                },
                child: const Text("Next Page >>"))
          ],
        ),
      ),
    );
  }
}
