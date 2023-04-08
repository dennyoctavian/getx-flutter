import 'package:belajar_getx/models/person.dart';
import 'package:get/get.dart';

class PersonController extends GetxController {
  var person = Person();
  var orang = Orang(name: "sumanto", age: 50).obs;

  void changeUpperCase() {
    person.name.value = person.name.value.toUpperCase();
  }

  void changeUpperCaseObjectClass() {
    orang.update((_) {
      orang.value.name = orang.value.name.toString().toUpperCase();
    });
  }
}
