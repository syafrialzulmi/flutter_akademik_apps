import 'package:flutter/material.dart';
import 'package:flutter_akademik_apps/calendar_page.dart';
import 'package:flutter_akademik_apps/home_page.dart';
import 'package:flutter_akademik_apps/news_page.dart';
import 'package:flutter_akademik_apps/study_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String _title = '';

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NewsPage(),
    StudyPage(),
    CalendarPage(),
  ];

  initState() {
    _title = 'default';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 1,
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: _title == 'default'
              ? Container(
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
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff9A9A9A),
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff0073AC),
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              AssetImage('assets/images/image_profile.jpg'),
                        ),
                      ),
                    ],
                  ),
                )
              : Text(
                  _title,
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff020202),
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
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color(0xff0073AC),
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
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'default';
          }
          break;
        case 1:
          {
            _title = 'Berita';
          }
          break;
        case 2:
          {
            _title = 'Hasil Studi';
          }
          break;
        case 3:
          {
            _title = 'Jadwal';
          }
          break;
      }
    });
  }
}
