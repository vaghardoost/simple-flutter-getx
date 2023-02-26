// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed("list");
          },
          child: Text("Go To List"),
        ),
      ),
    );
  }
}
