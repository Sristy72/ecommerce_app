import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              controller.previousPage();
            },
            child: Icon(
              Iconsax.arrow_left_2,
              color: dark ? TColors.white : TColors.black,
              size: 35,
            ),
          ),

          // ElevatedButton(
          //   onPressed: () {
          //     OnboardingController.instance.nextPage();
          //   },
          //   style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: dark? TColors.black: Colors.white),
          //   child: Icon(Iconsax.arrow_left_2, color: dark? TColors.white : Colors.black),
          // ),
          SizedBox(width: 10),

          GestureDetector(
            onTap: () {
              controller.nextPage();
            },
            child: Icon(
              Iconsax.arrow_right_3,
              color: dark ? Colors.white : TColors.black,
              size: 35,
            ),
          ),

          // ElevatedButton(
          //   onPressed: () {
          //     OnboardingController.instance.nextPage();
          //   },
          //   style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: dark? TColors.primary: Colors.black),
          //   child: Icon(Iconsax.arrow_right_3),
          // ),
        ],
      ),
    );
  }
}
