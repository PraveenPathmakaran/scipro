import 'package:flutter/material.dart';

import 'course_selection_page/course_selection _page.dart';
import 'image_upload/image_upload_thumbnail.dart';

class UploadVideosRecordedCourses extends StatelessWidget {
  const UploadVideosRecordedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              right: 300,
            ),
            child: Text("Thumbnail"),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 300,
            ),
            child: ElevatedButton(
                onPressed: () {
                  const Image_Upload_Thumbnail();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: const Text("Select Image")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter Video Name',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CourseSelectDropDown(),
          ),
        ],
      )),
    );
  }
}
