import 'package:flutter/material.dart';

class ScreenThirty extends StatelessWidget {
  const ScreenThirty({super.key});
  final List prices = const [50,100,200,54,62,88,949,4,56,5,4,4,6,6,46,8,6,4586,48,65,64,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        elevation: 3,
        title: Text("Price List",
          style: TextStyle(
              color: Colors.amber,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: DataTable(
            headingRowColor: WidgetStateProperty.all(Colors.teal),
            columnSpacing: 30,
            columns: [
              DataColumn(
                label: Text(
                  'N.O.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              DataColumn(
                label: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              DataColumn(
                label: Text(
                  'Price',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              DataColumn(
                label: Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
            rows: List.generate(prices.length, (index) {
              return DataRow(
                cells: [
                  DataCell(Text('${index + 1}')),
                  DataCell(Text('Product ${index + 1}')),
                  DataCell(Text('${prices[index]}')),
                  DataCell(Text('Description ${index + 1}')),
                ],
              );
            }
            ),
          ),
        ),
      ),
    );
  }
}
