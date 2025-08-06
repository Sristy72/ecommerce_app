import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/container/circular_container.dart';
import 'brand_card.dart';

class TBrandsShowcase extends StatelessWidget {
  const TBrandsShowcase({
    super.key, required this.image,

  });

  final List<String> image;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return TCircularContainer(
      padding: EdgeInsets.all(TSizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBetweenItems),
      child: Column(
        children: [
          ///Brands with product count
          TBrandCard(showBorder: false,),
          SizedBox(height: TSizes.spaceBetweenItems,),
          ///Brand top 3 product images
          Row(
              children:
              image.map((image) => brandTopProductImageWidget(image, darkMode)).toList()
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, darkMode){
    return Expanded(
      child: TCircularContainer(
        height: 100,
        backgroundColor: darkMode ? TColors.darkerGrey : TColors.light,
        margin: EdgeInsets.only(right: TSizes.sm),
        padding: EdgeInsets.all(TSizes.md),
        child: Image(image: AssetImage(image), fit: BoxFit.contain,),
      ),
    );
  }
}