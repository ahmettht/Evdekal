import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

class LineChartSample4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 5.0;
    const dateTextStyle =
    TextStyle(fontSize: 10, color: Colors.purple, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Covid-19 Grafiği',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Vaka Sayısı'),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 300,
                height: 140,
                child: LineChart(
                  LineChartData(
                    lineTouchData: LineTouchData(enabled: false),
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 2),
                          FlSpot(1, 1),
                          FlSpot(2, 3),
                          FlSpot(3, 4),
                          FlSpot(4, 5),
                          FlSpot(5, 6),
                          FlSpot(6, 10),
                        ],
                        isCurved: true,
                        barWidth: 6,
                        colors: [
                          Colors.red,
                        ],
                        belowBarData: BarAreaData(
                          show: true,
                          colors: [Colors.red.withOpacity(0.4)],
                          cutOffY: cutOffYValue,
                          applyCutOffY: true,
                        ),
                        aboveBarData: BarAreaData(
                          show: true,
                          colors: [Colors.red.withOpacity(0.6)],
                          cutOffY: cutOffYValue,
                          applyCutOffY: true,
                        ),
                        dotData: FlDotData(
                          show: false,
                        ),
                      ),
                    ],
                    minY: 0,
                    titlesData: FlTitlesData(
                      bottomTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 14,
                          getTextStyles: (value) => dateTextStyle,
                          getTitles: (value) {
                            switch (value.toInt()) {
                              case 0:
                                return 'Oca';
                              case 1:
                                return 'Şub';
                              case 2:
                                return 'Mar';
                              case 3:
                                return 'Nis';
                              case 4:
                                return 'May';
                              case 5:
                                return 'Haz';
                              default:
                                return '';
                            }
                          }),
                      leftTitles: SideTitles(
                        showTitles: true,
                        getTitles: (value) {
                          return '\ ${value + 1}b';
                        },
                      ),
                    ),
                    axisTitleData: FlAxisTitleData(
                        leftTitle: AxisTitle(showTitle: true, titleText: 'Vaka', margin: 4),
                        bottomTitle: AxisTitle(
                            showTitle: true,
                            margin: 0,
                            titleText: '2021',
                            textStyle: dateTextStyle,
                            textAlign: TextAlign.right)),
                    gridData: FlGridData(
                      show: true,
                      checkToShowHorizontalLine: (double value) {
                        return value == 1 || value == 6 || value == 4 || value == 5;
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('İyileşen Hasta Sayısı'),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 300,
                height: 140,
                child: LineChart(
                  LineChartData(
                    lineTouchData: LineTouchData(enabled: false),
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 4),
                          FlSpot(1, 5),
                          FlSpot(2, 6),
                          FlSpot(3, 8),
                          FlSpot(4, 9),
                          FlSpot(5, 9.5),
                          FlSpot(6, 10),
                        ],
                        isCurved: true,
                        barWidth: 6,
                        colors: [
                          Colors.blueAccent,
                        ],
                        belowBarData: BarAreaData(
                          show: true,
                          colors: [Colors.blue.withOpacity(0.4)],
                          cutOffY: cutOffYValue,
                          applyCutOffY: true,
                        ),
                        aboveBarData: BarAreaData(
                          show: true,
                          colors: [Colors.blue.withOpacity(0.6)],
                          cutOffY: cutOffYValue,
                          applyCutOffY: true,
                        ),
                        dotData: FlDotData(
                          show: false,
                        ),
                      ),
                    ],
                    minY: 0,
                    titlesData: FlTitlesData(
                      bottomTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 14,
                          getTextStyles: (value) => dateTextStyle,
                          getTitles: (value) {
                            switch (value.toInt()) {
                              case 0:
                                return 'Oca';
                              case 1:
                                return 'Sub';
                              case 2:
                                return 'Mar';
                              case 3:
                                return 'Nis';
                              case 4:
                                return 'May';
                              case 5:
                                return 'Haz';
                              default:
                                return '';
                            }
                          }),
                      leftTitles: SideTitles(
                        showTitles: true,
                        getTitles: (value) {
                          return '\ ${value + 1}b';
                        },
                      ),
                    ),
                    axisTitleData: FlAxisTitleData(
                        leftTitle: AxisTitle(showTitle: true, titleText: 'Hasta', margin: 4),
                        bottomTitle: AxisTitle(
                            showTitle: true,
                            margin: 0,
                            titleText: '2021',
                            textStyle: dateTextStyle,
                            textAlign: TextAlign.right)),
                    gridData: FlGridData(
                      show: true,
                      checkToShowHorizontalLine: (double value) {
                        return value == 1 || value == 6 || value == 4 || value == 5;
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}