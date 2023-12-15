import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_ecommerce/utils/constants/colors.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/device/device_utility.dart';
import 'package:t_ecommerce/utils/helpers/helper_functions.dart';

import '../../../controllers/onboarding_controller.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : TColors.black,
        ),
        onPressed: () {
          OnboardingController.instance.nextPage();
        },
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}