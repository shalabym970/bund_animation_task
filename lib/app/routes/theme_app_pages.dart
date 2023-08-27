import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:getx_mvc_templet/app/modules/home/bindings/home_binding.dart';
import 'package:getx_mvc_templet/app/modules/home/views/home_view.dart';
import 'app_routes.dart';

class ThemeAppPages {


  static final routes = [
    GetPage(
        name: Routes.login,
        page: () =>  HomeView(),
        binding: HomeBinding(),
        transition: Transition.zoom),
  ];
}
