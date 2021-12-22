import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_akademik_apps/widgets/label_name.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 0,
            color: Colors.grey.shade200,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: ListTile(
              leading: Icon(Icons.search),
              title: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari Berita, Pengumuman, atau Kegiatan',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          LabelSubHeader('Berita Terbaru'),
          SizedBox(
            height: 170,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    BeritaTerkini(),
                    BeritaTerkini(),
                    BeritaTerkini(),
                    BeritaTerkini(),
                    BeritaTerkini(),
                  ],
                  options: CarouselOptions(
                    height: 170.0,
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
          LabelSubHeader('Berita Lainya'),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
          NewsItem(),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      // color: Colors.amber,
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("assets/images/news_1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '10 Kampus dengan Lulusan Terbanyak, Ada Kampus Kamu?',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '12 Desember 2021',
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Lihat Lebih',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 14,
                            color: Colors.blue,
                          ),
                        ],
                      )
                    ],
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

class BeritaTerkini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("assets/images/news_1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: [0.1, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Pentingnya Pahami Jurusan Komunikasi Sebelum Kuliah',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '19 Juli 2021',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // alignment: Alignment(1, 1),
    );
  }
}


/*
Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Pentingnya Pahami Jurusan Komunikasi Sebelum Kuliah',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '19 Juli 2021',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
 */