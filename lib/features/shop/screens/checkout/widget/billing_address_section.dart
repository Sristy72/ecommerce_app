import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/cupertino.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){},)
      ],
    );
  }
}
