import 'package:belajar_getx/pages/page3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Dua"),
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
                onPressed: () async {
                  var data = await Get.to(() => const PageTiga());
                  print("Hasil : $data");
                },
                child: const Text("Next Page >>")),
            Text(Get.arguments.toString()),
          ],
        ),
      ),
    );
  }
}
