import 'package:assignment/config/routes/app-routes.dart';
import 'package:assignment/presentation/home/getx/home-bindigns.dart';
import 'package:assignment/presentation/home/pages/home.dart';
import 'package:assignment/presentation/products/pages/products.dart';
import 'package:assignment/presentation/splash/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../presentation/details_product/getx/details-product-bindings.dart';
import '../../presentation/details_product/pages/details-product.dart';
import '../../presentation/products/getx/product-bindings.dart';
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
      ),
      GetPage(
        name: AppRoutes.PRODUCTS,
        page: () => const Products(),
        binding: ProductsBindings(),
      ),
      GetPage(
        name: AppRoutes.DETAILS_PRODUCT,
        page: () => const DetailsProduct(),
        binding: DetailsProductBindings(),
      )
    ];
  }
}
