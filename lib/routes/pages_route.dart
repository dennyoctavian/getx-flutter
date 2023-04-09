import 'package:belajar_getx/pages/page1.dart';
import 'package:belajar_getx/pages/page2.dart';
import 'package:belajar_getx/pages/page3.dart';
import 'package:belajar_getx/pages/page4.dart';
import 'package:belajar_getx/pages/page5.dart';
import 'package:belajar_getx/routes/route_name.dart';
import 'package:get/get.dart';

class PagesRoute {
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => const PageSatu(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => const PageDua(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => const PageTiga(),
    ),
    GetPage(
      name: RouteName.page_4,
      page: () => const PageEmpat(),
    ),
    GetPage(
      name: RouteName.page_5,
      page: () => const PageLima(),
    ),
  ];
}
