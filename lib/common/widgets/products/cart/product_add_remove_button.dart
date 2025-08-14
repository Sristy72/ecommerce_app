import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../icons/circular_icon.dart';

class TProductAddRemoveButton extends StatelessWidget {
  const TProductAddRemoveButton({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        ///Add remove button
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: darkMode ? TColors.white : TColors.black,
          backgroundColor: darkMode ? TColors.darkerGrey : TColors.light,
        ),

        SizedBox(width: TSizes.spaceBetweenItems,),
        Text('1', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: TSizes.spaceBetweenItems,),

        TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
