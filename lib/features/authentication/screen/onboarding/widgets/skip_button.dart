import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/features/authentication/screen/login/login_screen.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          Get.off(() => const LoginScreen());
        },
        child: const Text("Skip"),
      ),
    );
  }
}
