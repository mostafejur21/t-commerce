// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/features/authentication/controllers/signup_controller/signup_controller.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class PrivacyAndCheckBox extends StatelessWidget {
  const PrivacyAndCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
                value: SignupController.instance.privacyPolicy.value,
                onChanged: (value) => SignupController.instance.privacyPolicy
                    .value = !SignupController.instance.privacyPolicy.value),
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems / 2,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "${TTexts.iAgreeTo} ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: "${TTexts.privacyPolicy} ",
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    ),
              ),
              TextSpan(
                text: "${TTexts.and} ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: "${TTexts.termsOfUse} ",
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
