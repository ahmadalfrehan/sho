import 'package:assignment/config/theme/app-theme.dart';
import 'package:assignment/domain/entity/product-entity.dart';
import 'package:assignment/presentation/details_product/getx/details-product-bindings.dart';
import 'package:assignment/presentation/details_product/pages/details-product.dart';
import 'package:assignment/presentation/home/getx/home-bindigns.dart';

import '../../../../config/utils/constants/export.dart';
import '../../home/pages/home.dart';

class Product extends StatelessWidget {
  final ProductEntity productEntity;

  const Product({Key? key, required this.productEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return InkWell(
      onTap: () {
        Get.to(
              () => const DetailsProduct(),
          arguments: [
            {'product': productEntity},
          ],
          opaque: true,

          transition: Transition.native,
          duration: const Duration(milliseconds: 2000),
          binding: DetailsProductBindings(),
        );
      },
      child: Container(
        height: ScreenStability.height(224),
        width: ScreenStability.width(324),
        decoration: const BoxDecoration(color: AppTheme.blackColor),
        child: Stack(
          alignment: MediaQuery.of(context).size.width > 480
              ? Alignment.topLeft
              : Alignment.topLeft,
          children: [
            _layoutContainer(),
            Image.asset(
              productEntity.image.toString(),
              height: ScreenStability.height(194),
              width: ScreenStability.width(216),
            ),
          ],
        ),
      ),
    );
  }

  _layoutContainer() {
    return ClipPath(
      child: Container(
        height: ScreenStability.height(218),
        width: ScreenStability.width(150),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.gradiantColorless,
              AppTheme.gradiantColorMore,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(1000),
            bottomRight: Radius.circular(100),
            bottomLeft: Radius.circular(100),
            topLeft: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 0,
            left: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productEntity.title.toString(),
                  style: AppTextStyle.textStyleWith500Weight16SizeWhiteColor),
              Text(productEntity.description.toString(),
                  style: AppTextStyle.textStyleWith400Weight6SizeWhiteColor),
              Row(
                children: [
                  Text('\$ ${productEntity.price.toString()}',
                      style:
                          AppTextStyle.textStyleWith500Weight12SizeWhiteColor),
                  const SizedBox(width: 3),
                  for (var i = 0; i < 5; i++)
                    Icon(Icons.star,
                        size: 10, color: i == 4 ? AppTheme.whiteColor : null),
                  Text(productEntity.rateV.toString(),
                      style: AppTextStyle.textStyleWith400Weight6SizeWhiteColor)
                ],
              ),
              SizedBox(height: ScreenStability.height(5))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.width);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
