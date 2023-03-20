import 'package:assignment/presentation/home/getx/home-controller.dart';
import 'package:assignment/presentation/products/getx/product-controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ProductsController());
  }
}