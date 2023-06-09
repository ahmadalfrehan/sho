import 'dart:developer';
import 'dart:ui';

import 'package:assignment/config/routes/app-routes.dart';
import 'package:assignment/config/theme/app-theme.dart';
import 'package:assignment/config/utils/constants/export.dart';
import 'package:assignment/presentation/home/pages/home.dart';
import 'package:assignment/presentation/splash/getx/splash-controller.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../home/getx/home-bindigns.dart';

class Splash extends StatelessWidget{
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsPaths.BACKGROUND_SPLASH), fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          SizedBox(height: ScreenStability.height(37)),
          Padding(
            padding: EdgeInsets.only(left: ScreenStability.width(32)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sho.',
                      style:
                          AppTextStyle.textStyleWith400Weight48SizeWhiteColor,
                    ),
                    const Text(
                      'The design of shoes',
                      style:
                          AppTextStyle.textStyleWith500Weight16SizeWhiteColor,
                    ),
                    SizedBox(height: ScreenStability.height(290)),
                    const Text(
                      'Tradition\nally',
                      style:
                          AppTextStyle.textStyleWith400Weight60SizeWhiteColor,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 40.5, sigmaY: 40.5),
                        child: Container(
                          clipBehavior: Clip.none,
                          width: ScreenStability.width(364),
                          height: ScreenStability.height(142),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: Colors.transparent
                          ),
                          alignment: Alignment.centerRight,
                          // padding: ,
                          padding: EdgeInsets.only(
                            right: ScreenStability.width(10),
                            top: ScreenStability.height(36),
                            left: ScreenStability.width(17),
                            bottom: ScreenStability.height(40),
                          ),
                          child: const Text(
                            'Shoes have been made from leather, wood or canvas, but are increasingly being made from rubber, plastics….',
                            style: AppTextStyle
                                .textStyleWith400Weight16SizeWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenStability.height(132)),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                right: ScreenStability.width(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: ScreenStability.width(165),
                    height: ScreenStability.height(51),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: AppTheme.greenDarkenMore,
                    ),
                    child: SwipeableButtonView(
                      buttonText: '',
                      buttontextstyle: const TextStyle(),
                      buttonColor: AppTheme.greenDarkenMore,
                      disableColor: AppTheme.greenDarkenMore,
                      activeColor: AppTheme.greenDarkenMore,
                      onFinish: () {
                        Get.offAllNamed(AppRoutes.HOME);
                      },
                      onWaitingProcess: () {
                        Future.delayed(const Duration(milliseconds: 200), () {
                          Get.offAll(
                            () => const Home(),
                            transition: Transition.upToDown,
                            duration: const Duration(milliseconds: 1000),
                            binding: HomeBindings(),
                          );
                        });
                      },
                      buttonWidget: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: ScreenStability.width(46),
                              height: ScreenStability.height(46),
                              decoration: BoxDecoration(
                                color: AppTheme.greenDarken,
                                borderRadius: BorderRadius.circular(17),
                              ),
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                color: AppTheme.whiteColor,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text('Swipe',
                                style: AppTextStyle
                                    .textStyleWith400Weight18SizeWhiteColor),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.arrow_forward_ios,
                                    color: AppTheme.whiteColor, size: 15),
                                Icon(Icons.arrow_forward_ios,
                                    color: AppTheme.whiteColor, size: 14),
                                Icon(Icons.arrow_forward_ios,
                                    color: AppTheme.greenDarken, size: 12),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
