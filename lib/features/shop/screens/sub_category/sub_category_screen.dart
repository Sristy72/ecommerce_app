import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports'), showSnackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///banner
              TRoundedImage(
                imageURL: TImages.promoBanner2,
                width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(height: TSizes.spaceBetweenSections),

              ///Sub categories
              Column(
                children: [
                  TSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  SizedBox(height: TSizes.spaceBetweenItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,

                      itemBuilder: (context, index) {
                        return TProductCardHorizontal();
                      },

                      separatorBuilder: (context, index) {return SizedBox(width: TSizes.spaceBetweenItems,);},
                      itemCount: 4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
