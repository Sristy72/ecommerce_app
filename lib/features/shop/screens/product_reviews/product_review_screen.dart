import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/widget/overall_product_ratings.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/widget/rating_progress_indicator.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/widget/user_review_card.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/rating_indicator/rating_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showSnackArrow: true, title: Text('Reviews and Ratings')),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ratings and Reviews are verified and are from people who use the same type of device that you use.',
              ),
              SizedBox(height: TSizes.spaceBetweenItems),

              ///Overall product ratings
              TOverallProductRatings(),

              ///Ratings
              TRatingBarIndicator(rating: 4,),
              
              Text('12600', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: TSizes.spaceBetweenSections),

              ///User Reviews List
              TUserReviewCard(),
              TUserReviewCard(),
              TUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


