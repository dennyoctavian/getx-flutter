import 'package:belajar_getx/routes/route_name.dart';
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
                  Get.back();
                },
                child: const Text("BackPage >>")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_4);
                },
                child: const Text("Next Page >>"))
          ],
        ),
      ),
    );
  }
}
