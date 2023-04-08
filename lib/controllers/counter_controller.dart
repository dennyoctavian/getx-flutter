import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var integer = 0;

  void increment() {
    count++;
  }

  void nambah() {
    integer++;
    update();
  }
}
