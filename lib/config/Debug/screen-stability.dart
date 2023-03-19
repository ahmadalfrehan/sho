import '../utils/constants/export.dart';

class ScreenStability {
  static const SCREEN_WIDTH = 428;
  static const SCREEN_HEIGHT = 926;

  static double width(var number) {
    SCREEN_WIDTH / number;
    var result = SCREEN_WIDTH / number;
    return Get.width / result;
  }

  static double height(var number) {
    var result = SCREEN_HEIGHT / number;
    return Get.height / result;
  }
}
