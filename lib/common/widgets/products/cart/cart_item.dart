import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        ///Image
        TRoundedImage(
            imageURL: TImages.productImage1,
            width: 60,
            height: 60,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: darkMode ? TColors.darkerGrey : TColors.light
        ),
        SizedBox(width: TSizes.spaceBetweenItems),

        ///title and price, size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleTextWithVerifiedIcon(title: 'Nike'),
              TProductTitleText(title: 'Black Sport Shoe', maxLines: 1,),

              ///Attributes
              Text.rich(TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
                  ]
              ))
            ],
          ),
        )
      ],
    );
  }
}