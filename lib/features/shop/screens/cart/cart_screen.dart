import 'package:ecommerce_app/features/shop/screens/cart/widget/cart_item_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/sizes.dart';
import '../checkout/checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
        showSnackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItemList(),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){Get.to(CheckoutScreen());}, child: Text('Checkout \$256.0')),
      ),
    );
  }
}



