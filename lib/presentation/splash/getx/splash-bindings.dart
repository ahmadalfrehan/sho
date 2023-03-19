import 'package:assignment/presentation/splash/getx/splash-controller.dart';
import 'package:get/get.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }

}