import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(builder: (context) {
                return ElevatedButton(
                    onPressed: () {
                      Get.bottomSheet(
                          isScrollControlled: false,
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: Container(
                              color: Colors.amber,
                              padding: const EdgeInsets.all(30),
                              child: Center(
                                child: ListView(
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Save"))
                                  ],
                                ),
                              ),
                            ),
                          ));
                    },
                    child: const Text("Dialog"));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
