import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

import 'expense_category_body.dart';

class IncomeCategoryBody extends StatefulWidget {
  const IncomeCategoryBody({super.key});

  @override
  State<IncomeCategoryBody> createState() => _IncomeCategoryBodyState();
}

class _IncomeCategoryBodyState extends State<IncomeCategoryBody> {
  Map<String, double> dataMap = {
    "Food": 4,
    "Rent": 3,
    "Fuel": 3,
  };

  final colorList = <Color>[
    // Colors.greenAccent,
    Color(0xfffE6CDBF),
    Color(0xffB2C2DC),
    Color(0xffCD82A9),
  ];
  LegendShape? _legendShape = LegendShape.circle;
  LegendPosition? _legendPosition = LegendPosition.right;
  int key = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        PieChart(
          dataMap: dataMap,
          animationDuration: Duration(milliseconds: 800),
          chartLegendSpacing: 32,
          chartRadius: MediaQuery.of(context).size.width / 2.2,
          colorList: colorList,
          initialAngleInDegree: 0,
          chartType: ChartType.disc,
          ringStrokeWidth: 32,
          // centerText: "HYBRID",
          legendOptions: LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.bottom,
            showLegends: true,
            legendShape: _legendShape == LegendShape.circle
                ? BoxShape.circle
                : BoxShape.rectangle,
            legendTextStyle:
                TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: true,
            showChartValuesInPercentage: false,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
          // gradientList: ---To add gradient colors---
          // emptyColorGradient: ---Empty Color gradient---
        )
      ],
    ));
  }
}
