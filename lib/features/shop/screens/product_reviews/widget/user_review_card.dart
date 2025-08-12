import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_app/common/widgets/rating_indicator/rating_indicator.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class TUserReviewCard extends StatelessWidget {
  const TUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(TImages.reviewImage1)),
                SizedBox(width: TSizes.spaceBetweenItems),
                Text('Eshita', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),

            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),

        ///Personal Rating
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            SizedBox(width: TSizes.spaceBetweenItems),
            Text('01 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        SizedBox(height: TSizes.spaceBetweenItems,),

        ReadMoreText(
          'Nike offers a wide range of running shoes for various needs, from daily training to racing. The Nike Pegasus series, like the Pegasus 41, is known for its comfort and durability, making it a solid choice for everyday runs. For those seeking a more cushioned experience, the Nike Vomero series, including the Vomero 18, provides excellent cushioning, especially for heel strikers and recovery runs.',
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary
          ),
        ),

        SizedBox(height: TSizes.spaceBetweenItems,),

        TCircularContainer(
          backgroundColor: darkMode ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nike', style: Theme.of(context).textTheme.titleMedium,),
                    Text('01 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),

                ReadMoreText(
                  'So far, Nike can be considered a good brand. Nike not only enjoys a high brand reputation around the world, but is also considered a representative of fashion, sports and trends.',
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary
                  ),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: TSizes.spaceBetweenSections,),
      ],
    );
  }
}
