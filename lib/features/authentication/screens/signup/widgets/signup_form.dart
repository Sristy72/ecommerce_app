import 'package:ecommerce_app/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/login_signup/divider.dart';
import '../../../../../common/widgets/login_signup/social_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'terms_conditions_checkbox.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //First and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              SizedBox(width: TSizes.spaceBTWInputFields),

              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: TSizes.spaceBTWInputFields),

          ///UserName
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          SizedBox(height: TSizes.spaceBTWInputFields),

          ///Email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          SizedBox(height: TSizes.spaceBTWInputFields),

          ///Phone Number
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          SizedBox(height: TSizes.spaceBTWInputFields),

          ///Password
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          SizedBox(height: TSizes.spaceBetweenSections),

          ///Terms and conditions Checkbox
          TTermsAndConditionsCheckbox(),

          SizedBox(height: TSizes.spaceBetweenSections,),

          ///Signup button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){Get.to(VerifyEmailScreen());}, child: Text(TTexts.createAccount))),
        ],
      ),
    );
  }
}

