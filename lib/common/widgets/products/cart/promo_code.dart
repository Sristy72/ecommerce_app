import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../custom_shapes/container/circular_container.dart';

class TPromoCode extends StatelessWidget {
  const TPromoCode({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);

    return TCircularContainer(
      showBorder: true,
      backgroundColor: darkMode ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(
        top: TSizes.sm,
        bottom: TSizes.sm,
        left: TSizes.md,
        right: TSizes.sm,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.withOpacity(.2),
                  foregroundColor:
                  darkMode
                      ? TColors.white.withOpacity(.5)
                      : TColors.black.withOpacity(.5),
                  side: BorderSide(color: Colors.grey.withOpacity(.1))
              ),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}