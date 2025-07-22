import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
   const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      final dark = THelperFunction.isDarkMode(context);
      final controller = OnboardingController.instance;
      return Positioned(
          bottom: TDeviceUtility.getBottomNavigationBarHeight() + 25,
          left: TSizes.defaultSpace,
          child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 5,
            ),
          ),
        );
  }
}