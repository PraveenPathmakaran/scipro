import 'package:flutter/material.dart';
import 'package:scipro/presentation/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class VideoListingGrid extends StatefulWidget {
  /// Creates the home page.
  const VideoListingGrid({Key? key}) : super(key: key);

  @override
  VideoListingGridState createState() => VideoListingGridState();
}

class VideoListingGridState extends State<VideoListingGrid> {
  // final DataGridController _gridController = DataGridController();
  List<Video> videos = <Video>[];
  late VideoDataSource videoDataSource;

  @override
  void initState() {
    videos = getVideoData(context);

    super.initState();

    videoDataSource = VideoDataSource(videoData: videos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter SfDataGrid'),
      ),
      body: SfDataGrid(
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
        columnWidthMode: ColumnWidthMode.fill,
        allowSorting: true,
        onCellTap: ((details) {
          if (details.rowColumnIndex.rowIndex != 0) {
            // int selectedRowIndex = details.rowColumnIndex.rowIndex - 1;
            // var row = videoDataSource.effectiveRows.elementAt(selectedRowIndex);
            customShowDilogBox(
              doyouwantActionButton: true,
              context: context,
              title: 'C O U R S E S List',
              children: [
                const SizedBox(
                  height: 500,
                  width: 600,
                )
              ],
            );
          }
        }),
      ),
    );
  }

  List<Video> getVideoData(BuildContext context) {
    return [
      Video(context, 01, 'Science', 9, 2),
      Video(context, 02, 'GK', 3, 30),
      Video(context, 03, 'Social Science', 7, 15),
      Video(context, 04, 'Maths', 8, 15),
      Video(context, 05, 'English', 3, 1),
    ];
  }
}

class Video {
  Video(this.context, this.no, this.categoryname, this.noofcourse, this.date);

  final int no;

  BuildContext context;
  final String categoryname;
  final int noofcourse;

  final int date;
}

class VideoDataSource extends DataGridSource {
  int rowIndex = 0;

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
          return GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: Text(e.value.toString()),
            ),
          );
        }).toList());
  }
}
