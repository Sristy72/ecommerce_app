import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/rating_and_share.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../product_reviews/product_review_screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            TProductImageSlider(),

            ///Product Details
            Padding(
              padding: EdgeInsets.only(
                left: TSizes.defaultSpace,
                right: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  ///Rating and share
                  TRatingAndShare(),

                  ///price , title, Stock and brand
                  TProductMetaData(),

                  ///attributes
                  TProductAttribute(),
                  SizedBox(height: TSizes.spaceBetweenSections),

                  ///Checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBetweenItems),

                  ///Description
                  TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBetweenItems),
                  ReadMoreText(
                    'Nike markets its products under its own brand, as well as Nike Golf, Nike Pro, Nike+, Nike Blazers, Air Force 1, Nike Dunk, Air Max, Foamposite, Nike Skateboarding and Nike CR7.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  SizedBox(height: TSizes.spaceBetweenItems),

                  ///Reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBetweenItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () {
                          Get.to(ProductReviewScreen());
                        },
                        icon: Icon(Iconsax.arrow_right_3, size: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
