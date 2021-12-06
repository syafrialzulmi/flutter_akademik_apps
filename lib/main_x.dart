import 'package:flutter/material.dart';
import 'package:flutter_akademik_apps/news.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akademik Apps',
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHome(),
        '/news': (context) => MyNews(),
      },
    );
  }
}
