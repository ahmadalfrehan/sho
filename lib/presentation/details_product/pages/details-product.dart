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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: ScreenStability.width(20),
              top: ScreenStability.height(29),
            ),
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
                        height: 405,
                        width: 278,
                        productEntity: controller.productEntity.value,
                      ),
                      Align(
                        alignment: const Alignment(20, -1.9),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        children: const [
                          Text('Sizes',
                              style: AppTextStyle
                                  .textStyleWith500Weight15SizeWhiteColor)
                        ],
                      ),
                    ],
                  ),
                ),
                const Text('Vulnerable',
                    style: AppTextStyle.textStyleWith400Weight18SizeWhiteColor),
                const Text(
                    'Though the human foot can adapt to varied terrains and climate conditions, it is still vulnerable to environmental hazards such as sharp rocks and temperature extremes….',
                    style: AppTextStyle.textStyleWith400Weight16SizeWhiteColor)
              ],
            ),
          ),
        ),
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
