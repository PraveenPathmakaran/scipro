import 'package:flutter/material.dart';

class UploadVideo extends StatefulWidget {
  const UploadVideo({Key? key}) : super(key: key);

  @override
  State<UploadVideo> createState() => _UploadVideoState();
}

class _UploadVideoState extends State<UploadVideo> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            'Delete Item',
          ),
          onPressed: () {
            showAlertDialog();
          },
        ),
      ),
    );
  }

  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            // title: Text('Upload Video?'),
            // content: Text('Are you sure you want to delete this item?'),
            actions: [
              Text('Upload Video?'),
              Center(child: CircleAvatar(radius: 50)),
              
              Row(
                children: [
                  Text("Name:"),

                ],
              )
            ],
          );
        });
  }
}
