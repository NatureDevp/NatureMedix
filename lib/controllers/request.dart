import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/req_list.dart';

class RequestController extends GetxController {
  RxString searchQuery = ''.obs;
  RxString selectedFilter = 'Filter'.obs;
  RxString selectedStatus = 'Status'.obs;

  final RxList<DataColumn> _tableColumn = <DataColumn>[].obs;
  final RxList<DataRow> _tableRow = <DataRow>[].obs;
  final RxList<String> _filterOption = <String>['Filter'].obs;

  List<DataColumn> get tableColumn => _tableColumn.value;
  List<DataRow> get tableRow => _tableRow.value;
  List<String> get columns => _filterOption.value;

  @override
  void onInit() {
    super.onInit();
    // Initialize DataColumns in the initState
    initializeColumns();
    initializeRows();
    _filterOption.addAll(COLUMN_NAME);
  }

  void initializeColumns() {
    _tableColumn.value = COLUMN_NAME.map((column) {
      return DataColumn(
        label: Text(
          column,
          style: const TextStyle(
            color: Colors.black, // White text for the header
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }).toList();
  }

  void initializeRows() {
    _tableRow.value = [
      const DataRow(cells: [
        DataCell(Text('1')),
        DataCell(Text('Rosemary')),
        DataCell(Text('John Doe')),
        DataCell(Text('Pending')),
      ]),
      // Add more rows as needed
    ];
  }

  List<DataRow> getFilteredRows(List<DataRow> rows) {
    return rows.where((row) {
      bool matchesSearch = searchQuery.value.isEmpty ||
          row.cells.any(
            (cell) => cell.child
                .toString()
                .toLowerCase()
                .contains(searchQuery.value.toLowerCase()),
          );
      bool matchesFilter =
          selectedFilter.value.toLowerCase().contains('Filter'.toLowerCase()) ||
              row.cells[COLUMN_NAME.indexOf(selectedFilter.value)].child
                  .toString()
                  .toLowerCase()
                  .contains(searchQuery.value.toLowerCase());
      return matchesSearch && matchesFilter;
    }).toList();
  }
}
