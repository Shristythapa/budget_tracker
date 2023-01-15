import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'chart.dart';

class BarChart extends StatelessWidget {
  BarChart({Key? key}) : super(key: key);
  final List<BarChartModel> data= [
    BarChartModel(
      date: "2022-Oct",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Color(0xFFB6ADCA)),


      ),
    );
  }
}
