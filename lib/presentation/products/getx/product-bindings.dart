import 'package:assignment/presentation/products/getx/product-controller.dart';
import 'package:get/get.dart';

class ProductsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductsController());
  }
}
