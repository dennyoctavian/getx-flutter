import 'package:get/get.dart';

class Person {
  RxString name = 'agus'.obs;
  RxInt age = 25.obs;
}

class Orang {
  String? name;
  int? age;

  Orang({this.name, this.age});
}
