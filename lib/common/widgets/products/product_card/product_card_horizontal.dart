import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';
import '../../texts/product_price_text.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: darkMode ? TColors.darkerGrey : TColors.softGrey,
      ),
      child: Row(
        children: [
          ///Thumbnail, wishlist button, discount tag
          TCircularContainer(
            height: 120,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: darkMode? TColors.dark : TColors.white,
            child: Stack(
              children: [
                ///Thumbnail Image
                SizedBox(
                  width: 120,
                  height: 120,
                  child: TRoundedImage(
                    imageURL: TImages.productImage2,
                    applyImageRadius: true,
                  ),
                ),

                ///Sale Tag
                Positioned(
                  top: 12,
                  child: TCircularContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: TSizes.sm,
                      vertical: TSizes.xs,
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge?.apply(color: TColors.black),
                    ),
                  ),
                ),

                ///Favorite Icon Button
                Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          ///Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(title: 'Green Nike Air Shoes', smallSize: true,),
                      SizedBox(height: TSizes.spaceBetweenItems / 2),
                      TBrandTitleTextWithVerifiedIcon(title: 'Nike')
                    ],
                  ),

                  Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Product Price
                      TProductPriceText(price: '35',),

                      ///Add to cart button
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              TSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Icon(Iconsax.add, color: TColors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
