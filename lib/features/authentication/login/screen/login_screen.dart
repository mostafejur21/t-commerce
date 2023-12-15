import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/common/style/spacing_style.dart';
import 'package:t_ecommerce/common/widgets/login_or_signup/login_divider.dart';
import 'package:t_ecommerce/common/widgets/login_or_signup/login_social_button.dart';
import 'package:t_ecommerce/features/authentication/login/widgets/login_header.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/constants/text_strings.dart';

import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logos, title, subtitle
              const LoginHeader(),

              ///form

              const LoginForm(),

              CustomFormDivider(
                text: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const LoginSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
