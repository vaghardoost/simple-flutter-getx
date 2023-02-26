import 'package:get/get.dart';
import 'package:simple/list/controller.dart';

class ListWidgetBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ListWidgetController());
  }

}