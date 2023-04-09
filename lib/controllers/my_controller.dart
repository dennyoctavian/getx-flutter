import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  void change() => count++;
  void reset() => count.value = 0;

  // worker pada onInit
  @override
  void onInit() {
    debugPrint('oninit');

    // ... worker
    ever(count, (callback) => debugPrint("dijalankan dari ever"));
    everAll([count], (callback) => debugPrint("dijalankan dari everAll"));
    once(count, (callback) => debugPrint("dijalankan dari once"));
    debounce(count, (callback) => debugPrint("dijalankan dari debounce"),
        time: const Duration(seconds: 3));
    interval(count, (callback) => debugPrint("dijalankan dari interval"),
        time: const Duration(seconds: 3));
    super.onInit();
  }
}
