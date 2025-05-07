import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class StyledDataTable extends StatefulWidget {
  const StyledDataTable({Key? key}) : super(key: key);

  @override
  State<StyledDataTable> createState() => _StyledDataTableState();
}

class _StyledDataTableState extends State<StyledDataTable> {
  // Track which rows are selected
  final List<bool> _selectedRows = List.generate(4, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('DataTable2'),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Card(
            elevation: 2,
            child: DataTable2(
              columnSpacing: 16,
              horizontalMargin: 16,
              minWidth: 800,
              headingRowColor: MaterialStateProperty.all(Colors.grey[200]),
              showCheckboxColumn: true,
              columns: const [
                DataColumn(label: Text('Desert', style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text('Calories', style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text('Fat (gm)', style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text('Carbs (g)', style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text('Protein (g)', style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text('Sodium (mg)', style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text('Calcium (%)', style: TextStyle(fontWeight: FontWeight.bold))),
                DataColumn(label: Text('Iron (%)', style: TextStyle(fontWeight: FontWeight.bold))),
              ],
              rows: List<DataRow>.generate(
                4,
                    (index) => DataRow(
                  selected: _selectedRows[index],
                  onSelectChanged: (value) {
                    setState(() {
                      _selectedRows[index] = value ?? false;
                    });
                  },
                  cells: [
                    DataCell(Text(['Ice Cream Sandwich', 'Eclair', 'Cupcake', 'Gingerbread'][index])),
                    DataCell(Text(['237', '262', '305', '356'][index])),
                    DataCell(Text(['9.0', '16.0', '3.7', '16.0'][index])),
                    DataCell(Text(['37', '24', '67', '49'][index])),
                    DataCell(Text(['4.3', '6.0', '4.3', '3.9'][index])),
                    DataCell(Text(['129', '337', '413', '327'][index])),
                    DataCell(Text(['8%', '6%', '3%', '7%'][index])),
                    DataCell(Text(['1%', '7%', '8%', '16%'][index])),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
