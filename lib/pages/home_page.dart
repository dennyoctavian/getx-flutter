import 'package:belajar_getx/controllers/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final myController = Get.put(MyController());
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
        actions: [
          IconButton(
            onPressed: () {
              myController.reset();
              textController.text = '';
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'Terjadi sesuatu : ${myController.count} x',
                    style: const TextStyle(fontSize: 25),
                  )),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: textController,
                onChanged: (value) {
                  myController.change();
                  debugPrint(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
