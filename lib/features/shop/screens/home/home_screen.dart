import 'package:ecommerce_app/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [

                  ///AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBetweenSections),

                  ///SearchBar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBetweenSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace + 2),
                    child: Column(
                      children: [

                        ///Heading
                        TSectionHeading(
                          showActionButton: false,
                          title: 'Popular Categories',
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBetweenItems),

                        ///Categories
                        THomeCategories(),
                      ],
                    ),
                  ),

                  SizedBox(height: TSizes.spaceBetweenSections,)
                ],
              ),
            ),

            ///BODY
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace + 2),

              child: Column(
                children: [

                  ///Promo Slider
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                      TImages.promoBanner4,
                    ],
                  ),

                   const SizedBox(height: TSizes.spaceBetweenSections),

                  ///Heading
                  TSectionHeading(title: 'Popular Products', onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBetweenItems),

                  ///Popular products
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return TProductCardVertical();
                    },
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
