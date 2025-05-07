import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class CustomDataTable extends StatefulWidget {
  final String title;
  final String text;

  const CustomDataTable({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  State<CustomDataTable> createState() => _CustomDataTableState();
}

class _CustomDataTableState extends State<CustomDataTable> {
  final List<bool> _selectedRows = List.generate(4, (_) => false);

  Widget borderedCell(String text) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      alignment: Alignment.center,
      child: Text(text, textAlign: TextAlign.center),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(widget.text, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
        // Add size constraints to the Card
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Card(
              elevation: 2,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DataTable2(
                    columnSpacing: 0,
                    horizontalMargin: 0,
                    minWidth: 800,
                    headingRowColor: WidgetStateProperty.all(Colors.grey[200]),
                    showCheckboxColumn: true,
                    columns: const [
                      DataColumn(label: Text('Desert')),
                      DataColumn(label: Text('Calories')),
                      DataColumn(label: Text('Fat (gm)')),
                      DataColumn(label: Text('Carbs (g)')),
                      DataColumn(label: Text('Protein (g)')),
                      DataColumn(label: Text('Sodium (mg)')),
                      DataColumn(label: Text('Calcium (%)')),
                      DataColumn(label: Text('Iron (%)')),
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
                          DataCell(borderedCell(['Ice Cream Sandwich', 'Eclair', 'Cupcake', 'Gingerbread'][index])),
                          DataCell(borderedCell(['237', '262', '305', '356'][index])),
                          DataCell(borderedCell(['9.0', '16.0', '3.7', '16.0'][index])),
                          DataCell(borderedCell(['37', '24', '67', '49'][index])),
                          DataCell(borderedCell(['4.3', '6.0', '4.3', '3.9'][index])),
                          DataCell(borderedCell(['129', '337', '413', '327'][index])),
                          DataCell(borderedCell(['8%', '6%', '3%', '7%'][index])),
                          DataCell(borderedCell(['1%', '7%', '8%', '16%'][index])),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
