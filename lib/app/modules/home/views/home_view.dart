import 'package:d_chart/commons/data_model.dart';
import 'package:d_chart/d_chart.dart';
import 'package:d_chart/ordinal/bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../common/color_manager.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  final data = [
    {'study': "mathmatic", 'student': 70},
    {'study': "Biology", 'student': 170},
    {'study': "phisics", 'student': 100}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: ListView(children: [
          AspectRatio(
              aspectRatio: 16 / 9,
              child: DChartPie(
                  data: data.map((e) {
                    return {'domain': e['study'], 'measure': e['student']};
                  }).toList(),
                  fillColor: (pieData, index) {
                    switch (pieData['domain']) {
                      case "mathmatic":
                        return Colors.red;
                      case "Biology":
                        return Colors.green;
                      case "phisics":
                        return Colors.yellow;
                    }
                  },
                  strokeWidth: 5,
                  donutWidth: 20,
                  showLabelLine: false,
                  labelFontSize: 0)),
          const Center(
            child: Text('fkjf'),
          ),


          AspectRatio(
            aspectRatio: 16 / 9,
            child: DChartBarO(
              groupList: [
                OrdinalGroup(
                  id: '1',
                  data: [
                    OrdinalData(domain: 'Mon', measure: 2),
                    OrdinalData(domain: 'Tue', measure: 6),
                    OrdinalData(domain: 'Wed', measure: 3),
                    OrdinalData(domain: 'Thu', measure: 7),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
