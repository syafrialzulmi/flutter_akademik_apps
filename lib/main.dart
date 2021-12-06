import 'package:flutter/material.dart';
import 'package:flutter_akademik_apps/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akademi Apps',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
