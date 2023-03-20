import 'package:assignment/domain/entity/product-entity.dart';

import '../../../config/theme/app-theme.dart';
import '../../../config/utils/constants/export.dart';

class Triangle extends StatelessWidget {
  final ProductEntity productEntity;
  final double height;
  final double width;

  const Triangle({
    Key? key,
    required this.height,
    required this.width,
    required this.productEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: ScreenStability.height(height),
        width: ScreenStability.width(width),
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
            left: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productEntity.title.toString(),
                  style: AppTextStyle.textStyleWith500Weight26SizeWhiteColor),
              Text(productEntity.description.toString(),
                  style: AppTextStyle.textStyleWith400Weight10SizeWhiteColor),
              Row(
                children: [
                  Text('\$ ${productEntity.price.toString()}',
                      style:
                          AppTextStyle.textStyleWith500Weight18SizeWhiteColor),
                  const SizedBox(width: 10),
                  for (var i = 0; i < 5; i++)
                    Icon(Icons.star,
                        size: 20, color: i == 4 ? AppTheme.whiteColor : null),
                  Text(productEntity.rateV.toString(),
                      style:
                          AppTextStyle.textStyleWith400Weight10SizeWhiteColor)
                ],
              ),
              SizedBox(height: ScreenStability.height(20))
            ],
          ),
        ),
      ),
    );
  }
}
