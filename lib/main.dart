import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'config/routes/app-pages.dart';
import 'config/routes/app-routes.dart';

void main() {
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
      defaultTransition: Transition.cupertino,
      initialRoute: AppRoutes.SPLASH,
      getPages: AppPages.getPages(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // textTheme: Theme.of(context).textTheme.apply(fontFamily: 'bebas-neue'),
      ),
    );
  }
}
