import 'package:assignment/config/utils/constants/export.dart';

import '../../../domain/entity/product-entity.dart';

class DetailsProductController extends GetxController{

  Rx<ProductEntity> productEntity = ProductEntity.empty().obs;

  @override
  void onInit() {
    final data = Get.arguments;
    if (data != null) {
      productEntity.value = data[0]['product'];
    }
    super.onInit();
  }
}