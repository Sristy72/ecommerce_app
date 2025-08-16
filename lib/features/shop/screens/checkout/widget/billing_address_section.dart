import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){},),
        Text('Eshita Mondol', style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: TSizes.spaceBetweenItems/2,),
        Row(
          children: [
            Icon(Icons.phone, color: Colors.grey, size: 16,),
            SizedBox(width: TSizes.spaceBetweenItems,),
            Text('+880123456789', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(height: TSizes.spaceBetweenItems/2,),
        Row(
          children: [
            Icon(Icons.location_history, color: Colors.grey, size: 16,),
            SizedBox(width: TSizes.spaceBetweenItems,),
            Expanded(child: Text('South Liana, Maine 44734, USA', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,)),
          ],
        ),
      ],
    );
  }
}
