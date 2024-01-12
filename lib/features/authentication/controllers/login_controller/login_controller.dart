import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_ecommerce/common/widgets/network_manager.dart';
import 'package:t_ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:t_ecommerce/utils/constants/image_strings.dart';
import 'package:t_ecommerce/utils/popup_and_loader/full_screen_loader.dart';
import 'package:t_ecommerce/utils/popup_and_loader/loader.dart';

class LoginController extends GetxController {
  /// Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  /// Email and password sign in
  Future<void> emailAndPasswordSignIn() async {
    try {
      CustomFullScreenLoader.openLoadingDialog(
          "We are processing your information...", TImages.docerAnimation);

      ///check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        CustomFullScreenLoader.stopLoading();
        return;
      }

      ///form validation
      if (!loginFormKey.currentState!.validate()) {
        CustomFullScreenLoader.stopLoading();
        return;
      }

      /// local storage
      localStorage.write("REMEMBER_EMAIL", email.text.trim());
      localStorage.write("REMEMBER_PASSWORD", password.text.trim());
      // login using email and password
      await AuthenticationRepository.instance
          .signInWithEmailAndPassword(email.text.trim(), password.text.trim());

      //remove loader
      CustomFullScreenLoader.stopLoading();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      CustomFullScreenLoader.stopLoading();
      CustomLoader.errorSnackBar(title: "Oh snap!", message: e.toString());
    }
  }
}
