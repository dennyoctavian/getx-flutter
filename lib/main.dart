import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/detail_product_page.dart';
import 'pages/home_page.dart';
import 'pages/product_page.dart';

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
          name: '/product',
          page: () => const ProductPage(),
        ),
        GetPage(
          name: '/product/:id?',
          page: () => const DetailProductPage(),
        ),
      ],
    );
  }
}
