import 'package:flutter/material.dart';
import 'package:scipro/presentation/widgets/responsive/responsive.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class VideoListingGrid extends StatefulWidget {
  /// Creates the home page.
  const VideoListingGrid({Key? key}) : super(key: key);

  @override
  VideoListingGridState createState() =>
      VideoListingGridState();
}

class VideoListingGridState extends State<VideoListingGrid> {
  final DataGridController _gridController = DataGridController();
  List<Video> videos = <Video>[];
  late VideoDataSource videoDataSource;

  @override
  void initState() {
    super.initState();
    videos = getVideoData();
    videoDataSource = VideoDataSource(videoData: videos);
  }

  @override
  Widget build(BuildContext context) {
    return       SfDataGrid(
            controller: _gridController,
            defaultColumnWidth: ResponsiveWebSite.isDesktop(context)? 227: 150,
            gridLinesVisibility: GridLinesVisibility.both,
            headerGridLinesVisibility: GridLinesVisibility.both,
            source: videoDataSource,
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
                  columnName: 'categoryname',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'CATEGORY NAME',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'noofcourse',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'N0. OF COURSE',
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

  List<Video> getVideoData() {
    return [
      Video(01, 'Science', 9, 2),
      Video(02, 'GK', 3,  30),
      Video(03, 'Social Science', 7,  15),
      Video(04, 'Maths', 8,  15),
      Video(05, 'English', 3, 1),
    
      // Employee(10009, 'Gable', 'Developer', 15000),
      // Employee(10010, 'Grimes', 'Developer', 15000)
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class Video {
  /// Creates the employee class with required details.
  Video(
      this.no, this.categoryname, this.noofcourse, this.date);

  /// Id of an employee.
  final int no;

  /// Name of an employee.
  final String categoryname;
  final int noofcourse;


  /// Salary of an employee.
  final int date;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class VideoDataSource extends DataGridSource {
  int rowIndex = 0;

  /// Creates the employee data source class with required details.
  VideoDataSource({required List<Video> videoData}) {
    _videoData = videoData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'no', value: e.no),
              DataGridCell<String>(
                columnName: 'categoryname',
                value: e.categoryname,
              ),
              
              DataGridCell<int>(columnName: 'noofcourse', value: e.noofcourse),
           
              DataGridCell<int>(columnName: 'date', value: e.date),
            ]))
        .toList();
  }

  List<DataGridRow> _videoData = [];

  @override
  List<DataGridRow> get rows => _videoData;

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
              // source: videoDataSource,
              // // showVerticalScrollbar: false,
              // // showHorizontalScrollbar: true,
              // // columnWidthMode: ColumnWidthMode.fill,