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
    // "Semester 6",
    // "Semester 7",
    // "Semester 8"
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
            height: 200,
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
        ],
      ),
    );
  }
}
