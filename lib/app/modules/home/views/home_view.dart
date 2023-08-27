import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/color_manager.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Center(
            child: SfCircularChart(
                title: ChartTitle(text: 'Half yearly sales analysis'),
                // Enable legend
                // Enable tooltip

                series: <CircularSeries>[
              DoughnutSeries<SalesData, String>(
                dataSource: controller.chartData,
                xValueMapper: (SalesData data, _) => data.year,
                yValueMapper: (SalesData data, _) => data.sales,
                strokeWidth: 10.0,
                explode: true,
                opacity: 0.7,
                animationDuration: 1000,
              )
            ])));
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
