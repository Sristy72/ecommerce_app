import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtility.getAppBarHeight(),
      //That method probably returns the standard height of the app bar (usually around 56.0 logical pixels on Android, a bit more on iOS).
      //
      // So top: TDeviceUtility.getAppBarHeight(), means:
      //
      // “Put this widget below the app bar area (by that amount of height).”
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnboardingController.instance.skipPage();
        },
        child: Text('Skip'),
      ),
    );
  }
}
