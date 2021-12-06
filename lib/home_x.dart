import 'package:flutter/material.dart';
import 'package:flutter_akademik_apps/news.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    MyHome(),
    MyNews(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 5,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Hai, Sheila Shafitri',
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff020202),
                      ),
                    ),
                    Text(
                      '1301100310 - Sistem Informasi',
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff9A9A9A),
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xff0073AC),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundImage:
                        AssetImage('assets/images/image_profile.jpg'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Berita",
              icon: Icon(Icons.explore),
            ),
            BottomNavigationBarItem(
              label: "Hasil Studi",
              icon: Icon(Icons.bar_chart),
            ),
            BottomNavigationBarItem(
              label: "Jadwal",
              icon: Icon(Icons.calendar_today),
            ),
          ],
        ),
      ),
    );
  }
}
