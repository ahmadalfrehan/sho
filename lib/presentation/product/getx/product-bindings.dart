import 'package:assignment/presentation/product/getx/product-controller.dart';
import 'package:assignment/presentation/products/getx/product-controller.dart';
import 'package:get/get.dart';

class ProductBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
