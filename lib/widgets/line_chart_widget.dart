import 'package:fl_chart/fl_chart.dart';
// import '../widgets/line_titles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_akademik_apps/widgets/line_titles.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    Color(0xFF8AD8FF),
    Color(0xff0073AC),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minX: 0,
          maxX: 8,
          minY: 0,
          maxY: 4,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Color(0xFFC9C9C9),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: false,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: Color(0xFFC9C9C9),
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xFFC9C9C9), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 2.54),
                FlSpot(2, 2.91),
                FlSpot(3, 2.55),
                FlSpot(4, 3.58),
                FlSpot(5, 2.28),
                FlSpot(6, 3.10),
                FlSpot(7, 3.38),
                FlSpot(8, 3.20),
              ],
              isCurved: true,
              colors: gradientColors,
              barWidth: 1,
              // dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList(),
              ),
            ),
          ],
        ),
      );
}
