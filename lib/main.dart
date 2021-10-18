import 'package:askyard/pages/export_pages.dart';
import 'package:askyard/utilities/Palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Askyard());
}

class Askyard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Askyard',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Palette.scaffold
      ),
      home: HomePage(),
    );
  }
}
