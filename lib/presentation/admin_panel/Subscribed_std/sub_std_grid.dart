import 'package:flutter/material.dart';
import 'package:scipro/presentation/widgets/responsive/responsive.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SubscribedStudentShowing extends StatefulWidget {
  /// Creates the home page.
  const SubscribedStudentShowing({Key? key}) : super(key: key);

  @override
  SubscribedStudentShowingState createState() =>
      SubscribedStudentShowingState();
}

class SubscribedStudentShowingState extends State<SubscribedStudentShowing> {
  final DataGridController _gridController = DataGridController();
  List<Student> students = <Student>[];
  late StudentDataSource studentDataSource;

  @override
  void initState() {
    super.initState();
    students = getStudentData();
    studentDataSource = StudentDataSource(studentData: students);
  }

  @override
  Widget build(BuildContext context) {
    return       SfDataGrid(
            controller: _gridController,
            defaultColumnWidth: ResponsiveWebSite.isDesktop(context)? 227: 150,
            gridLinesVisibility: GridLinesVisibility.both,
            headerGridLinesVisibility: GridLinesVisibility.both,
            source: studentDataSource,
            columns: <GridColumn>[
              GridColumn(
                width: 100,
                  columnName: 'no',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'NO.',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'name',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'NAME',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'course',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'COURSE',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'phonenumber',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'PHONE NUMBER',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'email',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'EMAIL',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'date',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'DATE',
                        overflow: TextOverflow.ellipsis,
                      ))),
            ],
          );
  }

  List<Student> getStudentData() {
    return [
      Student(01, 'Rakhi', 'fg', 3, 'M@gmail.com', 2),
      Student(02, 'Radha', 'dfgv', 3, 'f@gmail.com', 30),
      Student(03, 'Anoop', 'fgvfd', 3, 'S@gmail.com', 15),
      Student(04, 'Laila', 'dfgv', 3, '@gmail.com', 15),
      Student(05, 'Cerina Notes', 'fdg', 3, 'S@gmail.com', 1),
      Student(06, 'Rithik', 'fdg', 3, 'G@gmail.com', 10),
      Student(07, 'Snoop', 'fgvd', 3, 'C@gmail.com', 15),
      Student(08, 'Pranav', 'dfg', 3, 'H@gmail.com', 5),
      // Employee(10009, 'Gable', 'Developer', 15000),
      // Employee(10010, 'Grimes', 'Developer', 15000)
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class Student {
  /// Creates the employee class with required details.
  Student(
      this.no, this.name, this.course, this.phonenumber, this.email, this.date);

  /// Id of an employee.
  final int no;

  /// Name of an employee.
  final String name;
  final String course;
  final int phonenumber;

  /// Designation of an employee.
  final String email;

  /// Salary of an employee.
  final int date;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class StudentDataSource extends DataGridSource {
  int rowIndex = 0;

  /// Creates the employee data source class with required details.
  StudentDataSource({required List<Student> studentData}) {
    _studentData = studentData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'no', value: e.no),
              DataGridCell<String>(
                columnName: 'name',
                value: e.name,
              ),
              DataGridCell<String>(
                  columnName: 'course', value: e.course),
              DataGridCell<int>( columnName: 'phonenumber', value: e.phonenumber),
              DataGridCell<String>(columnName: 'email', value: e.email),
              DataGridCell<int>(columnName: 'date', value: e.date),
            ]))
        .toList();
  }

  List<DataGridRow> _studentData = [];

  @override
  List<DataGridRow> get rows => _studentData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final isEvenRow = rowIndex.isEven;
    rowIndex++;
    return DataGridRowAdapter(
        color: isEvenRow ? Colors.white : Colors.blue[50],
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }
}


              // controller: _gridController,
              // defaultColumnWidth: 150,
              // gridLinesVisibility: GridLinesVisibility.both,
              // headerGridLinesVisibility: GridLinesVisibility.both,
              // // horizontalScrollPhysics: const AlwaysScrollableScrollPhysics(),
              // // isScrollbarAlwaysShown: true,
              // // horizontalScrollController: ScrollController(),
              // // verticalScrollController: ScrollController(),
              // source: studentDataSource,
              // // showVerticalScrollbar: false,
              // // showHorizontalScrollbar: true,
              // // columnWidthMode: ColumnWidthMode.fill,