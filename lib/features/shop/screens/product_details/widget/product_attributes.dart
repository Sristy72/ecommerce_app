import 'package:ecommerce_app/common/widgets/chips/choice_chips.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductAttribute extends StatelessWidget {
  const TProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Column(
      ///Selected attribute pricing and description
      children: [
        TCircularContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: darkMode ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              ///Title, Price, Stock status
              Row(
                children: [
                  TSectionHeading(title: 'Variation:', showActionButton: false),
                  SizedBox(width: TSizes.spaceBetweenItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitleText(title: 'Price: ', smallSize: true),

                          ///Actual Price
                          Text(
                            '\$100',
                            style: Theme.of(context).textTheme.titleSmall
                                ?.apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: TSizes.spaceBetweenItems),

                          ///Sale Price
                          TProductPriceText(price: '70'),
                        ],
                      ),

                      ///Stock Status
                      Row(
                        children: [
                          TProductTitleText(title: 'Stock: ', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              ///Variation Description
              TProductTitleText(
                title:
                    'This is the Description of the product and it can go up to max 4 lines.',
                maxLines: 4,
                smallSize: true,
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBetweenItems,),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Color', showActionButton: false,),
            SizedBox(height: TSizes.spaceBetweenItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChips(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChips(text: 'Red', selected: false,onSelected: (value){}),
                TChoiceChips(text: 'Blue', selected: true,onSelected: (value){}),
                TChoiceChips(text: 'Yellow', selected: false,onSelected: (value){}),
              ],
            )
          ],
        ),

        SizedBox(height: TSizes.spaceBetweenItems / 2,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size', showActionButton: false,),
            SizedBox(height: TSizes.spaceBetweenItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChips(text: 'EU 34', selected: true,onSelected: (value){},),
                TChoiceChips(text: 'EU 36', selected: false,onSelected: (value){}),
                TChoiceChips(text: 'EU 38', selected: true,onSelected: (value){}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
