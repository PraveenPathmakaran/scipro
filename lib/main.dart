import 'dart:ui';

import 'package:flutter/material.dart';

import 'presentation/admin_panel/upload_video_recorded_courses_folder/course_selection_page/upload_video.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollingConfig(),
      home: const UploadVideo(),
    );
  }
}

class ScrollingConfig extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};
}
