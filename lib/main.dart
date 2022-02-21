import 'package:flutter/material.dart';
import 'package:flutter_akademik_apps/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akademi Apps',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0xff0073AC),
      ),
    );
  }
}
