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
    return Obx(
      () => Scaffold(
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
        bottomNavigationBar: ClipRect(
          // ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 50.0,
              sigmaY: 50.0,
            ),
            child: AppBottomNavBar(
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
          ),
        ),
        // bottomNavigationBar: Stack(
        //   alignment: Alignment.bottomCenter,
        //   children: [
        //     MoltenBottomNavigationBar(
        //       // barColor: Colors.transparent,
        //       // borderColor: Colors.transparent,
        //       selectedIndex: controller.index.value,
        //       onTabChange: (clickedIndex) {
        //         controller.index.value = clickedIndex;
        //         // setState(() {
        //         //   _selectedIndex = clickedIndex;
        //         // });
        //       },
        //       domeCircleColor: Colors.transparent,
        //       tabs: [
        //         MoltenTab(
        //           icon: Icon(Icons.search),
        //         ),
        //         MoltenTab(
        //           icon: Icon(Icons.home),
        //         ),
        //         MoltenTab(
        //           icon: Icon(Icons.person),
        //           // unselectedColor: Colors.transparent,
        //         ),
        //         MoltenTab(
        //           icon: Icon(Icons.person),
        //         ),
        //         MoltenTab(
        //           icon: Icon(Icons.person),
        //         ),
        //       ],
        //     ),
        //     Container(
        //       color: Colors.transparent,
        //       child: ClipRect(
        //           clipBehavior: Clip.none,
        //           child: BackdropFilter(
        //             filter: ImageFilter.blur(
        //               sigmaX: 50.0,
        //               sigmaY: 50.0,
        //             ),
        //           )),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
