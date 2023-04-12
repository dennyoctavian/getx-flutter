import 'package:belajar_getx/controller/shop_controller.dart';
import 'package:belajar_getx/widgets/shop_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatelessWidget {
  final shopC = Get.put(ShopController(), tag: 'total');
  final quantityC = Get.create(() => ShopController());

  ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Page"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => ShopItem(),
        ),
      ),
      floatingActionButton: CircleAvatar(
        child: Obx(() => Text("${shopC.total}")),
      ),
    );
  }
}
