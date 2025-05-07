import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:wix_fivver/features/multiple_drowp_dwon/presentation/widget/getx.dart';


mixin MultiSelectScreen implements StatelessWidget {

  final MultiSelectController controller = Get.put(MultiSelectController());
  final List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MultiSelect with GetX')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MultiSelectDialogField(
              items: options.map((e) => MultiSelectItem<String>(e, e)).toList(),
              title: const Text("Select Options"),
              selectedColor: Colors.blue,
              buttonText: const Text("Choose Options"),
              onConfirm: (values) {
                controller.updateSelectedItems(values.cast<String>());
              },
              chipDisplay: MultiSelectChipDisplay(
                onTap: (item) {
                  controller.selectedItems.remove(item);
                },
              ),
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
              "Selected: ${controller.selectedItems.join(', ')}",
              style: const TextStyle(fontSize: 16),
            )),
          ],
        ),
      ),
    );
  }
}
