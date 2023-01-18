import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

import 'expense_chart.dart';

class BarChart extends StatelessWidget {
  BarChart({Key? key}) : super(key: key);

    BarChartModel(
      date: "2022-Oct",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Color(0xFFB6ADCA)),

    ),
    BarChartModel(
      date: "2022-Nov",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Color(0xFFB6ADCA)),

    ),
    BarChartModel(
      date: "2022-Dec",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Color(0xFFB6ADCA)),
    ),
    BarChartModel(
      date: "2022-Jan",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Color(0xFFB6ADCA)),
    ),


  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series =[
      charts.Series(
        id:"financial",
        data: data,
        domainFn: (BarChartModel series, _)=>series.date,
        measureFn: (BarChartModel series, _)=> series.financial,
        colorFn: (BarChartModel series, _)=> series.color,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bar Chart"),
        centerTitle: true,
        backgroundColor: Colors.green[700],

      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
        child: charts.BarChart(
          series,
          animate: true,
        ),
      ),
    );
  }
}
