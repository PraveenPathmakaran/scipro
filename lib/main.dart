import 'package:flutter/material.dart';
import 'package:scipro/presentation/admin_panel/slider_drawer/slider_drawerd.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AdminPanelPage(),
    );
  }
}
