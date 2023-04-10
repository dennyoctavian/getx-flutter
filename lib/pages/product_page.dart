import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALL PRODUCT"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/product/1?name=Baju&ukuran=L');
                },
                child: const Text("Products 1")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/product/2?name=Celana&ukuran=M');
                },
                child: const Text("Products 2")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/product/3?name=Kaos Kaki&ukuran=XL');
                },
                child: const Text("Products 3")),
          ],
        ),
      ),
    );
  }
}
