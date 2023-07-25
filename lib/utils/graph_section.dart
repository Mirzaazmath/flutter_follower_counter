import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class SplineGraph extends StatelessWidget {
  const SplineGraph({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2010, 35),
      ChartData(2011, 13),
      ChartData(2012, 34),
      ChartData(2013, 27),
      ChartData(2014, 40)
    ];
    return Scaffold(
        body: SfCartesianChart(

          backgroundColor:const  Color(0xff212528),
            plotAreaBackgroundColor: const Color(0xff212528),
            plotAreaBorderWidth: 0,
            primaryXAxis:
            CategoryAxis(
              axisLine: AxisLine(
                width: 0
              ),
                labelStyle: TextStyle(color: Colors.white),
                majorGridLines: const MajorGridLines(width: 0)
            ),
            primaryYAxis:CategoryAxis(
                majorGridLines: const MajorGridLines(width: 0),
              axisLine: AxisLine(
                  width: 0
              ),
            ),
            series: <ChartSeries>[
              // Renders spline chart
              SplineSeries<ChartData, int>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y
              )
            ]
        )
    );
  }
}
class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}