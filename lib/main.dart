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
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          duration: Duration(seconds: 2),
                          content: Text("hello")));

                      // Get.snackbar("ini adalah judulnya", "ini adalah isi pesannya",
                      //     animationDuration: const Duration(seconds: 2));
                    },
                    child: const Text("Scaffold Messenger"));
              }),
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                        "ini adalah judulnya", "ini adalah isi pesannya",
                        animationDuration: const Duration(seconds: 2));
                  },
                  child: const Text("Getx snackbar"))
            ],
          ),
        ),
      ),
    );
  }
}
