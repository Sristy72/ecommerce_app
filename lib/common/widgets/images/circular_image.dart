import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit = BoxFit.contain,
    required this.image,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm, this.color,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? color, backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (darkMode ? TColors.black : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image),
        color: color,
      ),
    );
  }
}
