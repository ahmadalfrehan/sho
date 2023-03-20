import 'dart:ui';

import 'package:assignment/presentation/home/getx/home-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/theme/app-theme.dart';
import '../../../config/utils/constants/assets-paths.dart';
import '../../products/pages/products.dart';
import '../widgets/app-bottom-navigation-bar.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
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
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            decoration: BoxDecoration(
                color: AppTheme.trans, borderRadius: BorderRadius.circular(55)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                // clipBehavior: Clip.antiAlias,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 20.0,
                    tileMode: TileMode.mirror,
                    sigmaY: 20.0,
                  ),
                  child: AppBottomNavBar(
                    tabIconSelectedSize: 50,
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
                    tabBarColor: AppTheme.trans,
                    // useSafeArea: true,
                    // tabIconColor: AppTheme.trans,
                    tabIconSelectedColor: AppTheme.trans,
                    tabSelectedColor: AppTheme.trans,
                    images: const [
                      AssetsPaths.SETTINGSSVG,
                      AssetsPaths.NOTIFICATIONSVG,
                      AssetsPaths.CROWNSVG,
                      AssetsPaths.USERSVG,
                      AssetsPaths.HOMESVG,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
