import 'package:flutter/material.dart';

class MyNews extends StatelessWidget {
  const MyNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 5,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Berita',
            maxLines: 1,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff020202),
            ),
          ),
        ),
      ),
    );
  }
}
