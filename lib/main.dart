// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple/list/binding.dart';
import 'package:simple/list/view.dart';
import 'package:simple/main/view.dart';

void main() {
  runApp(const Simple());
}

class Simple extends StatelessWidget {
  const Simple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => MainWidget(),
        ),
        GetPage(
          name: "/list",
          page: () => ListWidget(),
          binding: ListWidgetBindings(),
        ),
      ],
    );
  }
}
