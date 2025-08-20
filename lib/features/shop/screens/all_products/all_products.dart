import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Popular Products'), showSnackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Dropdown
              DropdownButtonFormField(
                items:
                    [
                          'Name',
                          'Higher Price',
                          'Lower Price',
                          'Sale',
                          'Newest',
                          'Popularity',
                        ]
                        .map((option) => DropdownMenuItem(value: option,child: Text(option)))
                        .toList(),
                onChanged: (value) {},
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
              ),

              SizedBox(height: TSizes.spaceBetweenSections,),

              TGridLayout(itemCount: 8, itemBuilder: (_, index){return TProductCardVertical();})
            ],
          ),
        ),
      ),
    );
  }
}
