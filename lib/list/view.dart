// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple/list/controller.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final controller = Get.find<ListWidgetController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text("list"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < controller.list.length; i++)
                Column(
                  children: [
                    Center(
                      child: Text(
                        "index:$i",
                      ),
                    ),
                    Center(
                      child: Text(
                        "title:${controller.list[i].title}",
                      ),
                    ),
                    Center(
                      child: Text(
                        "content:${controller.list[i].content}",
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final result = await Get.bottomSheet(_AddWidget());
            if (result != null) {
              controller.add(result[0], result[1]);
              print.printInfo(info: result.toString());
            }
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class _AddWidget extends StatefulWidget {
  const _AddWidget({Key? key}) : super(key: key);

  @override
  State<_AddWidget> createState() => _AddWidgetState();
}

class _AddWidgetState extends State<_AddWidget> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: _titleController,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: _contentController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final result = [
                _titleController.text,
                _contentController.text,
              ];
              Get.back(result: result);
            },
            child: Text("Add"),
          ),
        ],
      ),
    );
  }
}
