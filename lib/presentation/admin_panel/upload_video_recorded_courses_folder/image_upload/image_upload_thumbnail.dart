import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Image_Upload_Thumbnail extends StatefulWidget {
  const Image_Upload_Thumbnail({super.key});

  @override
  State<Image_Upload_Thumbnail> createState() => _Image_Upload_ThumbnailState();
}

class _Image_Upload_ThumbnailState extends State<Image_Upload_Thumbnail> {
  String _imagepath = '';
  final ImagePicker imgpicker = ImagePicker();
  Future getImage() async {
    try {
      var pickedFile = await imgpicker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        setState(() {
          _imagepath = pickedFile.path;
        });
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking image.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: FileImage(File(_imagepath)),
        ),
        TextButton(
          onPressed: getImage,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Icon(
                  Icons.image,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 4,
                  left: 10,
                ),
                child: const Text('Add profle picture'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
