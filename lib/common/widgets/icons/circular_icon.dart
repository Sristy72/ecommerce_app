import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  ///A custom circular button widget with background color
  ///Properties are:
  ///Container [width], [height], [backgroundColor]
  ///Icon [size], [color], [onPressed]

  const TCircularIcon({
    super.key,
    this.height,
    this.width,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? height, width, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor != null ? backgroundColor! : darkMode
                ? TColors.black.withOpacity(.9)
                : TColors.white.withOpacity(.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color:color, size: size, ),)
    );
  }
}
