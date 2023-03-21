import 'package:assignment/presentation/splash/getx/splash-bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'config/routes/app-pages.dart';
import 'config/routes/app-routes.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return GetMaterialApp(
      title: 'Flutter Demo',
      textDirection: TextDirection.ltr,
      defaultTransition: Transition.upToDown,
      initialRoute: AppRoutes.SPLASH,
      getPages: AppPages.getPages(),
      initialBinding: SplashBindings(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
    );
  }
}
