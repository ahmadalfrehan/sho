import 'package:assignment/config/theme/app-theme.dart';
import 'package:assignment/config/utils/constants/assets-paths.dart';
import 'package:assignment/presentation/home/getx/home-controller.dart';
import 'package:assignment/presentation/home/widgets/app-bottom-navigation-bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../products/pages/products.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Obx(
        () => IndexedStack(
          index: controller.index.value,
          children: [
            Container(),
            Container(),
            const Products(),
            Container(),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavBar(
        initialSelectedTab: 'z',
        labels: const [
          "a",
          "b",
          "z",
          "c",
          "d",
        ],
        onTabItemSelected: (int index) {
          controller.index.value = index;
        },
        tabBarColor: AppTheme.gradiantColorless,
        tabIconColor: AppTheme.greenDarken,
        tabIconSelectedColor: Colors.transparent,
        tabSelectedColor: AppTheme.greenDarken,
        images: const [
          AssetsPaths.SETTINGSSVG,
          AssetsPaths.NOTIFICATIONSVG,
          AssetsPaths.CROWNSVG,
          AssetsPaths.USERSVG,
          AssetsPaths.HOMESVG,
        ],
      ),
    );
  }
}
