import 'package:assignment/config/style/app-text-style.dart';
import 'package:assignment/config/theme/app-theme.dart';
import 'package:assignment/config/utils/constants/urls.dart';
import 'package:assignment/domain/entity/product-entity.dart';

import '../../../../config/utils/constants/export.dart';

class Product extends StatelessWidget {
  final ProductEntity productEntity;

  const Product({Key? key, required this.productEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenStability.height(237),
      width: ScreenStability.width(224),
      decoration: const BoxDecoration(color: AppTheme.blackColor),
      child: Stack(
        children: [
          _layoutContainer(),
          Align(
            alignment: const Alignment(0, -1.7),
            child: Image.asset(productEntity.image.toString()),
          )
        ],
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
            topRight: Radius.circular(400),
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 0,
            left: 10,
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
                  SizedBox(width: 3),
                  for (var i = 0; i < 5; i++)
                    Icon(Icons.star,
                        size: 10, color: i == 4 ? AppTheme.whiteColor : null),
                  Text(productEntity.rateV.toString(),
                      style: AppTextStyle.textStyleWith400Weight6SizeWhiteColor)
                ],
              ),
              SizedBox(height: ScreenStability.height(10))
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
    // path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
