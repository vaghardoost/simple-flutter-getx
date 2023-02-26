import 'package:get/get.dart';

class ListWidgetController extends GetxController{
  final list = <Model>[].obs;

  void add(String title,String content){
    list.add(Model(title, content));
  }

}

class Model{
  final String title;
  final String content;

  Model(this.title, this.content);
}
