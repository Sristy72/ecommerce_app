import 'package:ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      ///Price and Sale price
      children: [
        Row(
          children: [
            ///Sale tag
            TCircularContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(.8),
              padding: EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                '78%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.apply(color: TColors.black),
              ),
            ),

            SizedBox(width: TSizes.spaceBetweenItems),

            ///Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall?.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: TSizes.spaceBetweenItems),
            TProductPriceText(price: '175', isLarge: true),
          ],
        ),

        SizedBox(height: TSizes.spaceBetweenItems / 1.5),

        ///Title
        TProductTitleText(title: 'Green Nike Sports Shirt'),

        SizedBox(height: TSizes.spaceBetweenItems / 1.5),

        ///Stock Status
        Row(
          children: [
            TProductTitleText(title: 'Status:'),
            SizedBox(width: TSizes.spaceBetweenItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        SizedBox(height: TSizes.spaceBetweenItems / 1.5),

        ///Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.nikeLogo,
              width: 32,
              height: 32,
              color: darkMode ? TColors.white : TColors.black,
            ),
            TBrandTitleTextWithVerifiedIcon(title: 'Nike'),
          ],
        ),
      ],
    );
  }
}
