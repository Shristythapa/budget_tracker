import 'package:charts_flutter_new/flutter.dart' as charts;
class BarChartModel{
  String date;
  int financial;
  final charts.Color color;

  BarChartModel({
    required this.date,
    required this.financial,
    required this.color,
  });

}