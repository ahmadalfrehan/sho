import 'package:assignment/config/Debug/out.dart';
import 'package:assignment/presentation/splash/getx/splash-controller.dart';

import '../../config/utils/constants/export.dart';

class PreSplash extends GetView<SplashController> {
  const PreSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log(controller.variable.value);
    return Scaffold();
  }
}
