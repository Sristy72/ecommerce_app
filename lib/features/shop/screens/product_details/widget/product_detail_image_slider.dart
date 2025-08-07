import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: darkMode ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            ///Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(
                  TSizes.productImageRadius * 2,
                ),
                child: Center(
                  child: Image.asset(TImages.productImage3),
                ),
              ),
            ),

            ///Image Slider
            ///
            Positioned(
              right: 0,
              left: TSizes.defaultSpace,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    imageURL: TImages.productImage1,
                    backgroundColor: darkMode ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: EdgeInsets.all(TSizes.sm),
                  ),
                  separatorBuilder: ((_, __) {
                    return SizedBox(width: TSizes.spaceBetweenItems);
                  }),
                  itemCount: 4,
                ),
              ),
            ),

            //Appbar Icon
            TAppBar(
              showSnackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}