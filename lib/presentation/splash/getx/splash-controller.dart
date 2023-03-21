import 'package:assignment/config/routes/app-routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxString variable = 'splash'.obs;

  @override
  void onInit() async {
    await Future.delayed(
      const Duration(seconds: 500),
      () {
        Get.offAllNamed(AppRoutes.HOME);
      },
    );
    super.onInit();
  }
}
