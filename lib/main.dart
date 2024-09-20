import 'package:flutter/material.dart';
import 'platform_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlatformScreen(), // Указываем новый экран как домашний
    );
  }
}
