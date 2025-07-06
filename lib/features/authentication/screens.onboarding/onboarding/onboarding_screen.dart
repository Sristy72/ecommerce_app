import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers.onboarding/onboarding_controller.dart';
import '../widgets/on_boarding_dot_navigation.dart';
import '../widgets/on_boarding_next_button.dart';
import '../widgets/on_boarding_page.dart';
import '../widgets/on_boarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
     //final controller = Get.put(OnboardingController());
    final controller = OnboardingController.instance;

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onboardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),

              OnBoardingPage(
                image: TImages.onboardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),

              OnBoardingPage(
                image: TImages.onboardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip button
          OnBoardingSkip(),

          //Dot navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          //Circular Next button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}

