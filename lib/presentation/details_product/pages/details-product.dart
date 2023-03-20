import 'package:assignment/presentation/details_product/widget/arrow-back-button.dart';

import '../../../config/theme/app-theme.dart';
import '../../../config/utils/constants/export.dart';
import '../../products/widget/traingle.dart';
import '../getx/details-product-controller.dart';

class DetailsProduct extends GetView<DetailsProductController> {
  const DetailsProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: AppTheme.blackColor,
        child: Padding(
          padding: EdgeInsets.only(
            left: ScreenStability.width(20),
            top: ScreenStability.height(31),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ArrowBackButton(),
                Padding(
                  padding: EdgeInsets.only(
                    left: ScreenStability.width(0),
                    top: ScreenStability.height(34),
                  ),
                  child: Stack(
                    children: [
                      Triangle(
                        height: 390,
                        width: 278,
                        productEntity: controller.productEntity.value,
                      ),
                      Align(
                        alignment: const Alignment(20, -2.9),
                        child: Image.asset(
                          controller.productEntity.value.image.toString(),
                          fit: BoxFit.fill,
                          height: ScreenStability.height(350),
                          width: ScreenStability.width(471),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: ScreenStability.height(40)),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text('02 Colour',
                              style: AppTextStyle
                                  .textStyleWith500Weight15SizeWhiteColor),
                          Row(
                            children: [
                              for (var i = 0; i < 2; ++i)
                                Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    _gradiantBackGroundContainer(),
                                    Image.asset(
                                      controller.productEntity.value.image
                                          .toString(),
                                      height: 83,
                                      width: 97,
                                    )
                                  ],
                                ),
                            ],
                          ),
                        ],
                      ),
                      const VerticalDivider(
                        width: 5,
                        color: AppTheme.whiteColor,
                      ),
                      Column(
                        children: [
                          const Text('Sizes',
                              style: AppTextStyle
                                  .textStyleWith500Weight15SizeWhiteColor),
                          for (var i = 0; i < 2; i++)
                            Row(
                              children: [
                                for (var i = 0; i < 3; i++) _circleWithNumber(),
                              ],
                            ),
                          SizedBox(height: ScreenStability.height(25)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: ScreenStability.height(25)),
                const Text('Vulnerable',
                    style: AppTextStyle.textStyleWith400Weight18SizeWhiteColor),
                const Text(
                    'Though the human foot can adapt to varied terrains and climate conditions, it is still vulnerable to environmental hazards such as sharp rocks and temperature extremes….',
                    style: AppTextStyle.textStyleWith400Weight16SizeWhiteColor),
                SizedBox(height: ScreenStability.height(25)),
                Container(
                  height: ScreenStability.height(73),
                  width: ScreenStability.width(392),
                  decoration: const BoxDecoration(
                    color: Color(0xFF788382),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(45),
                      bottomRight: Radius.circular(23),
                      bottomLeft: Radius.circular(45),
                      topLeft: Radius.circular(23),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            AssetsPaths.QWS,
                            height: 220,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                          const Text('360',
                              style: AppTextStyle
                                  .textStyleWith500Weight26SizeWhiteColor),
                        ],
                      ),
                      Container(
                        height: ScreenStability.height(46),
                        width: ScreenStability.width(154),
                        decoration: BoxDecoration(
                          color: const Color(0xFFb0b9b9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.lock_outline_rounded ,color: AppTheme.whiteColor),
                            Text('Add to cart',style: AppTextStyle.textStyleWith500Weight16SizeWhiteColor),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _circleWithNumber() {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
      child: Container(
        height: ScreenStability.height(34),
        width: ScreenStability.width(34),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: const LinearGradient(
            colors: [
              AppTheme.gradiantColorless075,
              AppTheme.gradiantColorMore08,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        alignment: Alignment.center,
        child: const Text('08',
            style: AppTextStyle.textStyleWith400Weight10SizeWhiteColor),
      ),
    );
  }

  _gradiantBackGroundContainer() {
    return Container(
      height: ScreenStability.height(65),
      width: ScreenStability.width(66),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppTheme.gradiantColorless075,
            AppTheme.gradiantColorMore08,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
        borderRadius: BorderRadius.all(Radius.circular(21)),
      ),
    );
  }
}
