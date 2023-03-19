import 'package:assignment/config/routes/app-routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxString variable = 'splash'.obs;

  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.toNamed(AppRoutes.HOME),
    );
    super.onInit();
  }
}
