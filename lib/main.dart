import 'package:belajar_getx/controller/count_controller.dart';
import 'package:belajar_getx/pages/count_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePage(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
            name: '/count',
            page: () => CountPage(),
            binding: BindingsBuilder(() {
              Get.put(CountController());
            })),
      ],
    );
  }
}
