import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_mvc_templet/app/modules/home/views/home_view.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeController extends GetxController {
  List<SalesData>? chartData;

  @override
  void onInit() {
    chartData = getChartData();
    super.onInit();
  }

  List<SalesData> getChartData() {
    final chartData = [
      SalesData('Jan', 35),
      SalesData('Feb', 28),
      SalesData('Mar', 34),
      SalesData('Apr', 32),
      SalesData('May', 40)
    ];
    return chartData;
  }
}
