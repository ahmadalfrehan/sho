import 'package:assignment/config/routes/app-routes.dart';
import 'package:assignment/presentation/home/getx/home-bindigns.dart';
import 'package:assignment/presentation/home/home.dart';
import 'package:assignment/presentation/splash/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../presentation/splash/getx/splash-bindings.dart';

class AppPages {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: AppRoutes.SPLASH,
        page: () => const Splash(),
        binding: SplashBindings(),
      ),
      GetPage(
        name: AppRoutes.HOME,
        page: () => const Home(),
        binding: HomeBindings(),
      )
    ];
  }
}
