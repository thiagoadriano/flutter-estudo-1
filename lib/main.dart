import 'package:flutter/material.dart';
import 'pages/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      home: Home(),
    );
  }
}

void main() {
  runApp(MyApp());
}