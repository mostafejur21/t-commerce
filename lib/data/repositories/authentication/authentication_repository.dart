import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_ecommerce/bottom_navigation_menu.dart';
import 'package:t_ecommerce/features/authentication/screen/login/login_screen.dart';
import 'package:t_ecommerce/features/authentication/screen/onboarding/onboarding_screen.dart';
import 'package:t_ecommerce/features/authentication/screen/signup/verify_email_screen.dart';
import 'package:t_ecommerce/utils/exceptions/custom_firebase_auth_exception.dart';
import 'package:t_ecommerce/utils/exceptions/custom_firebase_exception.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final devicesStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  void screenRedirect() async {
    final User? user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const BottomNavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(
              email: _auth.currentUser?.email,
            ));
      }
    } else {
      devicesStorage.writeIfNull("IsFirstTime", true);
      devicesStorage.read("IsFirstTime") != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => const OnBoardingScreen());
    }
  }

  /*---------------------------Email & password Sign in---------------------------*/

  ///[Email authentication]- Sign in
  ///[Email authentication]- Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw CustomFirebaseException(e.code).message;
    } catch (e) {
      throw "Something went wrong. please try again";
    }
  }

  ///[Email authentication]- Mail verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw CustomFirebaseException(e.code).message;
    } catch (e) {
      throw "Something went wrong, please try again";
    }
  }

  ///[Email authentication]- Re authenticate user
  ///[Email authentication]- Forget password
  /*---------------------------Social Sign in---------------------------*/

  ///[Social authentication]- Google sign in
  ///[Social authentication]- Facebook sign in
  /*---------------------------end Federated identity and social signin---------------------------*/
  ///[Federated identity and social signin]- Logout
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw CustomFirebaseException(e.code).message;
    } catch (e) {
      throw "Something went wrong, please try again";
    }
  }
}
