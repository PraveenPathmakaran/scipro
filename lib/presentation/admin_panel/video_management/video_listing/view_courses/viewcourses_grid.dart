import 'package:flutter/material.dart';
import 'package:scipro/presentation/widgets/responsive/responsive.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class VideoCourseGrid extends StatefulWidget {
  /// Creates the home page.
  const VideoCourseGrid({Key? key}) : super(key: key);

  @override
  VideoCourseGridState createState() =>
      VideoCourseGridState();
}

class VideoCourseGridState extends State<VideoCourseGrid> {
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
            defaultColumnWidth: ResponsiveWebSite.isDesktop(context)? 257: 150,
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
                  columnName: 'courses',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'Courses',
                        overflow: TextOverflow.ellipsis,
                      ))),
              GridColumn(
                  columnName: 'noofvideos',
                  label: Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: const Text(
                        'No. of videos',
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
    

    ];
  }
}


class Video {

  Video(
      this.no, this.courses, this.noofvideos, this.date);

  final int no;


  final String courses;
  final int noofvideos;



  final int date;
}


class VideoDataSource extends DataGridSource {
  int rowIndex = 0;


  VideoDataSource({required List<Video> videoData}) {
    _videoData = videoData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'no', value: e.no),
              DataGridCell<String>(
                columnName: 'courses',
                value: e.courses,
              ),
              
              DataGridCell<int>(columnName: 'noofvideos', value: e.noofvideos),
           
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
            onTap: (){
              
            },
            child: Container(
                     
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: Text(e.value.toString()),
            ),
          );
        }).toList());
  }
}

