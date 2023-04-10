import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product ${Get.parameters['name']}"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Product id ${Get.parameters['id']}"),
          Text("Ukuran ${Get.parameters['ukuran']}")
        ],
      )),
    );
  }
}
