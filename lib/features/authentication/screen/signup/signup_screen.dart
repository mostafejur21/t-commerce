import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/common/widgets/login_or_signup/login_divider.dart';
import 'package:t_ecommerce/common/widgets/login_or_signup/login_social_button.dart';
import 'package:t_ecommerce/features/authentication/controllers/signup_controller.dart';
import 'package:t_ecommerce/features/authentication/screen/signup/widgets/agree_t&c.dart';
import 'package:t_ecommerce/features/authentication/screen/signup/widgets/signup_form.dart';
import 'package:t_ecommerce/utils/constants/sizes.dart';
import 'package:t_ecommerce/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put((SignupController()));
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///form
              const SignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///agree to terms and conditions
              const PrivacyAndCheckBox(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///create account button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.signup(),
                  child: Text(TTexts.createAccount.toUpperCase()),
                ),
              ),

              ///divider
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              CustomFormDivider(text: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///social buttons
              const LoginSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
