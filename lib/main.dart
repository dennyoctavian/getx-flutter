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
              ElevatedButton(
                  onPressed: () {
                    Get.dialog(
                        barrierDismissible: false,
                        const Dialog(
                          child: Text("HELLO"),
                        ));
                  },
                  child: const Text("Dialog")),
              ElevatedButton(
                  onPressed: () {
                    Get.generalDialog(
                        pageBuilder: (context, animation, secondAnimation) {
                      return const AlertDialog();
                    });
                  },
                  child: const Text("General Dialog")),
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        barrierDismissible: false,
                        onWillPop: () async => false,
                        title: "Ini Judul",
                        middleText: "Ini adalah dialog",
                        // default
                        textCancel: "Batal",
                        cancelTextColor: Colors.pink,
                        onCancel: () {},
                        // custom
                        cancel: ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text("cancel")));
                  },
                  child: const Text("Default Dialog"))
            ],
          ),
        ),
      ),
    );
  }
}
