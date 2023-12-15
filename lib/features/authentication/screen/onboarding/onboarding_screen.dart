import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/features/authentication/screen/onboarding/widgets/indicator.dart';
import 'package:t_ecommerce/features/authentication/screen/onboarding/widgets/next_button.dart';
import 'package:t_ecommerce/features/authentication/screen/onboarding/widgets/pageview.dart';
import 'package:t_ecommerce/features/authentication/screen/onboarding/widgets/skip_button.dart';
import 'package:t_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Scrollable page view
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),

          ///skip button
          const SkipButton(),

          ///indicator
          const OnBoardingIndicator(),

          ///circle Button
          const CircleButton(),
        ],
      ),
    );
  }
}





