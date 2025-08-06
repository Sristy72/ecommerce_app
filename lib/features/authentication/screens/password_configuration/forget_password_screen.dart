import 'package:ecommerce_app/features/authentication/screens/password_configuration/reset_password_screen.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Headings
            Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBetweenItems,),
            Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: TSizes.spaceBetweenSections*2,),

            /// TextField
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),

            const SizedBox(height: TSizes.spaceBetweenSections,),

            /// Submit Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){Get.off(ResetPasswordScreen());}, child: Text(TTexts.submit)),)
          ],
        ),
      ),
    );
  }
}
