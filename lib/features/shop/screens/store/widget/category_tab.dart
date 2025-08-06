import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///brands
              TBrandsShowcase(
                image: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ],
              ),

              SizedBox(height: TSizes.spaceBetweenItems),

              ///product you may like
              TSectionHeading(title: 'You might like', onPressed: () {}),
              SizedBox(height: TSizes.spaceBetweenItems),

              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return TProductCardVertical();
                },
              ),

              SizedBox(height:  TSizes.spaceBetweenSections,)
            ],
          ),
        ),
      ],
    );
  }
}
