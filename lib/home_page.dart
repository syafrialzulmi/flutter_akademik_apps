import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140.0,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Indeks Prestasi',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Semester Lima',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '3.53',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Seluruh Semester',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonIP('Notifikasi', Icons.notifications, true),
                    IconButtonIP('Scan QR', Icons.qr_code_scanner_sharp, false),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton('Kalender', Icons.calendar_today),
                    IconButton('Pesan', Icons.mail),
                    IconButton('Repositori', Icons.folder),
                    IconButton('Presensi', Icons.person_add_alt_1),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton('UKT', Icons.account_balance_wallet),
                    IconButton('Catatan', Icons.edit_road_outlined),
                    IconButton('Transkrip', Icons.bar_chart),
                    IconButton('Lainnya', Icons.important_devices_outlined),
                  ],
                ),
              ],
            ),
          ),
          LabelSubHeader('Jadwal Hari Ini'),
          SizedBox(
            height: 140,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    JadwalItem('SI-110', 'Algoritma', 'GB-0021',
                        'Dr. Ahmad Syamsudin, S.T., M.Eng.', '7.00'),
                    JadwalItem('SI-120', 'Matematika Komputer', 'GB-0031',
                        'Ir. Joko Widodo', '10.00'),
                    JadwalItem('SI-210', 'Bahasa Indonesia', 'GK-0001',
                        'Sastro Wardoyo, S.Pd., M.Pd.', '13.00'),
                    JadwalItem('SI-210', 'Bahasa Indonesia', 'GK-0001',
                        'Sastro Wardoyo, S.Pd., M.Pd.', '13.00'),
                  ],
                  options: CarouselOptions(
                    height: 130.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                )
              ],
            ),
          ),
          LabelSubHeader('Informasi Kuliah'),
          Container(
            padding: EdgeInsets.all(10),
            height: 150.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                    "https://gkprodstorage.blob.core.windows.net/wpmediafilesblog/2020/06/Kuliah-di-Universitas-Swasta-Kok-Minder-Kenapa.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              'Pentingnya Pahami Jurusan Komunikasi Sebelum Kuliah',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            alignment: Alignment(1, 1),
          ),
        ],
      ),
    );
  }
}

class JadwalItem extends StatelessWidget {
  final String kodeMataKuliah;
  final String namaMataKuliah;
  final String ruangKuliah;
  final String pengajarMataKuliah;
  final String waktuKuliah;

  JadwalItem(this.kodeMataKuliah, this.namaMataKuliah, this.ruangKuliah,
      this.pengajarMataKuliah, this.waktuKuliah);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Color(0xff0073AC),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Text(
                waktuKuliah,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kodeMataKuliah,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    namaMataKuliah,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        ruangKuliah,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    pengajarMataKuliah,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LabelSubHeader extends StatelessWidget {
  final String nameHeader;

  LabelSubHeader(this.nameHeader);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        nameHeader,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xff020202),
        ),
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final String nameLabel;
  final IconData iconLabel;

  IconButton(this.nameLabel, this.iconLabel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 5),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                onTap: () {},
                child: Container(
                  // margin: EdgeInsets.all(5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          iconLabel,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              nameLabel,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}

class IconButtonIP extends StatelessWidget {
  final String nameLabel;
  final IconData iconLabel;
  final bool notifikasi;

  IconButtonIP(this.nameLabel, this.iconLabel, this.notifikasi);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                onTap: () {},
                child: Container(
                  // margin: EdgeInsets.all(5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          iconLabel,
                          color: Theme.of(context).primaryColor,
                          size: 45,
                        ),
                        notifikasi
                            ? Positioned(
                                top: 5,
                                left: 25,
                                child: Container(
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                  constraints: BoxConstraints(
                                    minHeight: 13,
                                    minWidth: 13,
                                  ),
                                ),
                              )
                            : Text(''),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text(
            nameLabel,
            style: TextStyle(fontSize: 14, color: Colors.white),
          )
        ],
      ),
    );
  }
}
