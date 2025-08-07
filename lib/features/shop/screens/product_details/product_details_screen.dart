import 'package:ecommerce_app/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widget/rating_and_share.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);

    return Scaffold(
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
              child: Column(children: [
                ///Rating and share
                TRatingAndShare()
                ///price , title, Stock and brand
                ///attributes
                ///Checkout button
                ///Description
                ///Reviews
              ]),
            ),
          ],
        ),
      ),
    );
  }
}


