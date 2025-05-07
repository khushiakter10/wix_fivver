// file: controllers/multi_select_controller.dart
import 'package:get/get.dart';

class MultiSelectController extends GetxController {
  var selectedItems = <String>[].obs;

  void updateSelectedItems(List<String> items) {
    selectedItems.assignAll(items);
  }
}
