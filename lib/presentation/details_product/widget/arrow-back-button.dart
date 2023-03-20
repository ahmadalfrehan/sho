import '../../../config/theme/app-theme.dart';
import '../../../config/utils/constants/export.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Container(
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
        child:
            const Icon(Icons.arrow_back_outlined, color: AppTheme.whiteColor),
      ),
    );
  }
}
