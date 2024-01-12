import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:t_ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:t_ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/utils/constants/text_strings.dart';
import 'package:t_ecommerce/utils/popup_and_loader/loader.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    sendEmailVerification();
    setTimerForAutoRedirect();
  }

  ///send email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      CustomLoader.successSnackBar(
          title: "Email send",
          message: "Please check your inbox and verify your email");
    } catch (e) {
      CustomLoader.errorSnackBar(title: 'Oh snap!', message: e.toString());
    }
  }

  ///timer to automatically redirect to email screen
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (time) async {
      await FirebaseAuth.instance.currentUser?.reload();
      if (FirebaseAuth.instance.currentUser?.emailVerified ?? false) {
        time.cancel();
        Get.off(
          () => SuccessScreen(
              images: TImages.successfulRegistrationAnimation,
              title: TTexts.yourAccountCreatedSubTitle,
              subtitle: TTexts.yourAccountCreatedSubTitle,
              onPressed: () =>
                  AuthenticationRepository.instance.screenRedirect()),
        );
      }
    });
  }

  ///manually check if email has been verified
  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.offAll(
        () => SuccessScreen(
            images: TImages.successfulRegistrationAnimation,
            title: TTexts.yourAccountCreatedTitle,
            subtitle: TTexts.yourAccountCreatedSubTitle,
            onPressed: () =>
                AuthenticationRepository.instance.screenRedirect()),
      );
    }
  }
}
