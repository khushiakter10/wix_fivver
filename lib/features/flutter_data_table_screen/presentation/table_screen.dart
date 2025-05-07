import 'package:flutter/material.dart';
import 'package:wix_fivver/helpers/ui_helpers.dart';
import 'data_screen.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(100),

          const CustomDataTable(title: 'khusbu', text: 'khusi',)
        ],
      ),
    );
  }
}
