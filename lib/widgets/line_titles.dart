import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        topTitles: SideTitles(
          showTitles: false,
          margin: 10,
        ),
        rightTitles: SideTitles(
          showTitles: false,
          margin: 10,
        ),
        bottomTitles: SideTitles(
          showTitles: true,
          // reservedSize: 35,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xFFC9C9C9),
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'Semester';
              case 1:
                return '1';
              case 2:
                return '2';
              case 3:
                return '3';
              case 4:
                return '4';
              case 5:
                return '5';
              case 6:
                return '6';
              case 7:
                return '7';
              case 8:
                return '8';
            }
            return '';
          },
          reservedSize: 10,
          margin: 10,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xFFC9C9C9),
            // fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1.00';
              case 2:
                return '2.00';
              case 3:
                return '3.00';
              case 4:
                return '4.00';
            }
            return '';
          },
          reservedSize: 35,
          margin: 10,
        ),
      );
}
