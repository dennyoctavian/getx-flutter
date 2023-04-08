import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt counter = 0.obs;
  RxBool isDark = false.obs;

  changeTheme() => isDark.value = !isDark.value;

  increment() => counter + 1;
}
