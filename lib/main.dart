import 'package:flutter/material.dart';

import 'presentation/admin_panel/upload_video_recorded_courses_folder/upload_videos_recorded_courses.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UploadVideosRecordedCourses(),
    );
  }
}
