import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/common/widgets/network_manager.dart';
import 'package:t_ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:t_ecommerce/data/repositories/user_data/user_repository.dart';
import 'package:t_ecommerce/features/authentication/models/user_model.dart';
import 'package:t_ecommerce/features/authentication/screen/signup/verify_email_screen.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/popup/full_screen_loader.dart';
import 'package:t_ecommerce/utils/popup/loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  ///Signup func

  Future<void> signup() async {
    try {
      ///start loader
      CustomFullScreenLoader.openLoadingDialog(
          "We are processing your information...", TImages.successAnimation);

      ///check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        CustomFullScreenLoader.stopLoading();
        return;
      }

      ///form validation
      if (!signupFormKey.currentState!.validate()) {
        CustomFullScreenLoader.stopLoading();
        return;
      }

      ///privacy policy
      if (!privacyPolicy.value) {
        CustomLoader.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create an account, you must have to read and accept the Privacy policy and T&C ");
      }

      //Register user and save data to firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      //save authenticate user data to firebase Fire store
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePic: '',
      );
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      CustomFullScreenLoader.stopLoading();
      //show success message
      CustomLoader.successSnackBar(
          title: "Congratulation",
          message: "Your account has been created! verify email to continue");

      //move to verify email screen

      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      CustomFullScreenLoader.stopLoading();
      CustomLoader.errorSnackBar(title: "Oh snap!", message: e.toString());
    }
  }
}
