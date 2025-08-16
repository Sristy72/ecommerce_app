import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){},),
        SizedBox(height: TSizes.spaceBetweenItems/2,),
        Row(
          children: [
            TCircularContainer(
              width: 60,
              height: 35,
              backgroundColor: darkMode ? TColors.light : TColors.white,
              padding: EdgeInsets.all(TSizes.sm),
              child: Image.asset(TImages.paypal, fit: BoxFit.contain,),
            ),
            SizedBox(width: TSizes.spaceBetweenItems / 2,),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
