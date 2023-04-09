import 'package:belajar_getx/pages/page1.dart';
import 'package:belajar_getx/routes/pages_route.dart';
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
      home: const PageSatu(),
      getPages: PagesRoute.pages,
    );
  }
}
