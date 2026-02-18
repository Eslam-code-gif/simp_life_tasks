import 'package:flutter/material.dart';

class ScreenTwentyEight extends StatelessWidget {
  const ScreenTwentyEight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        elevation: 3,
        title: Text("Data Table",
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
        child: DataTable(
          columnSpacing: 30,
          columns: [
            DataColumn(
              label: Text(
                'ID',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            DataColumn(
              label: Text(
                'Book',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            DataColumn(
              label: Text(
                'Author',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('#100')),
                DataCell(Text('Flutter Basics')),
                DataCell(Text('David John')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('#102')),
                DataCell(Text('Git and GitHub')),
                DataCell(Text('Merlin Nick')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('#101')),
                DataCell(Text('Flutter Basics')),
                DataCell(Text('David John')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
