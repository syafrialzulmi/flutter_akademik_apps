import 'package:flutter/material.dart';
import 'package:flutter_akademik_apps/widgets/label_name.dart';
import 'package:flutter_akademik_apps/widgets/line_chart_widget.dart';

class StudyPage extends StatefulWidget {
  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  String _valSemester = 'Semester 1';

  List _listSemester = [
    "Semester 1",
    "Semester 2",
    "Semester 3",
    "Semester 4",
    "Semester 5",
    "Semester 6",
    "Semester 7",
    "Semester 8"
  ];

  final List<Map> _mataKuliah = [
    {'nilai': 'A', 'nama': 'Bahasa Pemograman'},
    {'nilai': 'A', 'nama': 'Statistika'},
    {'nilai': 'A', 'nama': 'Matematika Diskret'},
    {'nilai': 'A', 'nama': 'Riset Operasi'},
    {'nilai': 'A', 'nama': 'Menejemen Resiko'},
    {'nilai': 'A', 'nama': 'Strategi Sitem'},
    {'nilai': 'A', 'nama': 'Big Data'},
    {'nilai': 'A', 'nama': 'Keamanan Informasi'}
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelSubHeader('Statistik Indeks Prestasi'),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            // color: Colors.amber,
            child: LineChartWidget(),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nilai Semester',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff020202),
                  ),
                ),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton(
                    hint: Text("Pilih Semester"),
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 28,
                    value: _valSemester,
                    items: _listSemester.map((value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _valSemester = value.toString();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(width: 1, color: Colors.grey.shade300),
              // color: Colors.amber,
            ),
            child: Table(
              columnWidths: const <int, TableColumnWidth>{
                0: FlexColumnWidth(),
                1: FixedColumnWidth(60),
                2: FixedColumnWidth(60),
                3: FixedColumnWidth(60),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      border: Border.all(
                          width: 1, color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Mata Kuliah',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nilai',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Bobot',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'NA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TableRowItem('Bahasa Indonesia', 'AB'),
                TableRowItem('Bahasa Pemograman', 'A'),
                TableRowItem('Kalkulus', 'AB'),
                TableRowItem('Sistem Jaringan Komputer', 'BC'),
                TableRowItem('Menejemem Resiko', 'AB'),
                TableRowItem('Bahasa Inggris', 'A'),
              ],
              //     _mataKuliah.map((matakuliah) {
              //   return TableRow(children: [
              //     Container(
              //         color: _mataKuliah.indexOf(matakuliah) % 2 == 0
              //             ? Colors.blue[50]
              //             : Colors.grey[50],
              //         padding: EdgeInsets.all(3),
              //         child: Text(matakuliah['nama'])),
              //     Container(
              //         color: _mataKuliah.indexOf(matakuliah) % 2 == 0
              //             ? Colors.blue[50]
              //             : Colors.grey[50],
              //         padding: EdgeInsets.all(3),
              //         child: Text(matakuliah['nilai'])),
              //     Container(
              //         color: _mataKuliah.indexOf(matakuliah) % 2 == 0
              //             ? Colors.blue[50]
              //             : Colors.grey[50],
              //         padding: EdgeInsets.all(3),
              //         child: Text('x')),
              //     Container(
              //         color: _mataKuliah.indexOf(matakuliah) % 2 == 0
              //             ? Colors.blue[50]
              //             : Colors.grey[50],
              //         padding: EdgeInsets.all(3),
              //         child: Text('x'))
              //   ]);
              // }).toList(),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(width: 1, color: Colors.grey.shade300),
              // color: Colors.amber,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelSubHeader('Keterangan Studi'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Total SKS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ':',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        '120',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Total Semester',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ':',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Lima',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Indeks Prestasi Komulatif',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ':',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        '3.21',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  TableRow TableRowItem(String name, String nilai) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
          child: Text(name),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
          child: Text(nilai),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
          child: Text('x'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
          child: Text('x'),
        ),
      ],
    );
  }
}
