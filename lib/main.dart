import 'package:belajar_getx/models/person.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var person = Person();
    var count = 0.obs;
    void add() {
      count++;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Obx(() => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "angka $count",
                    style: const TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    "Nama saya ${person.name}",
                    style: const TextStyle(
                      fontSize: 35,
                    ),
                  )
                ],
              )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            add();
            if (count % 2 == 0) {
              person.name.value = person.name.value.toLowerCase();
            } else {
              person.name.value = person.name.value.toUpperCase();
            }
          },
        ),
      ),
    );
  }
}
