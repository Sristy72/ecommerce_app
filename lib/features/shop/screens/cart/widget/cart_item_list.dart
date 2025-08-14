import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/products/cart/product_add_remove_button.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItemList extends StatelessWidget {
  const TCartItemList({
    super.key, this.addRemoveButton = true,
  });

  final bool addRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: ((_, index) {
        return Column(
          children: [
            TCartItem(),

            if(addRemoveButton)
              SizedBox(height: TSizes.spaceBetweenItems,),

            if(addRemoveButton)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70,),
                    TProductAddRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '134.0')
              ],
            ),
          ],
        );
      }),
      separatorBuilder:
          (_, __) => SizedBox(height: TSizes.spaceBetweenSections),
      itemCount: 2,
    );
  }
}