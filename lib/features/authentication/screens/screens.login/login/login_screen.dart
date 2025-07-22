import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/features/authentication/screens/screens.login/login/widgets/login_header.dart';
import 'package:ecommerce_app/features/authentication/screens/screens.login/login/widgets/loginform.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/login_signup/divider.dart';
import '../../../../../common/widgets/login_signup/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppbarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TLoginHeader(),

              ///Form
              TLoginForm(),

              ///Divider
              TDivider(dividerText: TTexts.orSignInWith.capitalize!,),

              SizedBox(height: TSizes.spaceBetweenSections),

              ///Footer
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}






