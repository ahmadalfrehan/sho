import 'package:assignment/config/theme/app-theme.dart';
import 'package:assignment/config/utils/constants/urls.dart';
import 'package:assignment/presentation/home/getx/home-controller.dart';
import 'package:assignment/presentation/home/pages/widget/product.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/style/app-text-style.dart';
import '../../../config/utils/constants/export.dart';

class Products extends GetView<HomeController> {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppTheme.blackColor,
        child: Column(
          children: [
            //
            Padding(
              padding: EdgeInsets.only(
                top: ScreenStability.height(30),
                left: ScreenStability.width(29),
                right: ScreenStability.width(17),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sho.',
                          style: AppTextStyle
                              .textStyleWith400Weight48SizeWhiteColor,
                        ),
                        Text('Some shoes Collection',
                            style: AppTextStyle
                                .textStyleWith500Weight18SizeWhiteColor),
                      ],
                    ),
                  ),
                  _scanContainer(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: ScreenStability.height(30),
                left: ScreenStability.width(29),
                right: ScreenStability.width(17),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Shoes',
                    style: TextStyle(
                      fontSize: 15,
                      color: AppTheme.whiteColor,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(width: ScreenStability.width(42)),
                  const Text('Unisex socks',
                      style:
                          AppTextStyle.textStyleWith500Weight16SizeWhiteColor),
                  Image.asset('${pathToAssetsImages}setting-4.png'),
                  Container(
                      height: ScreenStability.height(30),
                      width: ScreenStability.width(75),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppTheme.gradiantColorless,
                            AppTheme.gradiantColorMore,
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(40),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text('Search...',
                          style: TextStyle(
                              color: AppTheme.blackColor,
                              fontSize: 8,
                              fontWeight: FontWeight.w500))),
                ],
              ),
            ),
            SizedBox(height: ScreenStability.height(30)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ListView.builder(
                  itemCount: controller.productEntities.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Product(
                                  productEntity:
                                      controller.productEntities[index]),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 110),
                              Product(
                                  productEntity:
                                      controller.productEntities[index]),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _scanContainer() {
    return Container(
      height: ScreenStability.height(50),
      width: ScreenStability.width(50),
      decoration: BoxDecoration(
        color: AppTheme.blackColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
              color: AppTheme.anotherShadowColorWhite,
              spreadRadius: 0,
              blurRadius: 5),
        ],
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset('${pathToAssetsImages}scan.svg'),
    );
  }
}
