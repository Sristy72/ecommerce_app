import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_app/features/shop/screens/cart/widget/cart_item_list.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/promo_code.dart';
import '../../../../utils/helpers/helper_function.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showSnackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Items in cart
              TCartItemList(addRemoveButton: false),
              SizedBox(height: TSizes.spaceBetweenSections),

              ///Promo Code
              TPromoCode(),
              SizedBox(height: TSizes.spaceBetweenSections),

              ///Billing
              TCircularContainer(
                padding: EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: darkMode ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    ///Pricing
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBetweenItems,),

                    ///Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBetweenItems,),

                    ///
                    TBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


