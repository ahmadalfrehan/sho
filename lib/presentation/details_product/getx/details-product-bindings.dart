import 'package:get/get.dart';

import 'details-product-controller.dart';

class DetailsProductBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsProductController());
  }
}
