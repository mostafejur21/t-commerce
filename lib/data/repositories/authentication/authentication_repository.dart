import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_ecommerce/features/authentication/screen/login/login_screen.dart';
import 'package:t_ecommerce/features/authentication/screen/onboarding/onboarding_screen.dart';

class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance => Get.find();

  final devicesStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  void screenRedirect() async {
    devicesStorage.writeIfNull("IsFirstTime", true);
    devicesStorage.read("IsFirstTime") != true ? Get.offAll(()=> const LoginScreen()) : Get.offAll(()=> const OnBoardingScreen());
  }

  /*---------------------------Email & password Sign in---------------------------*/

  ///[Email authentication]- Sign in
  ///[Email authentication]- Register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e){
      throw "Something went wrong. please try again";
    }
  }
  ///[Email authentication]- Mail verification
  ///[Email authentication]- Re authenticate user
  ///[Email authentication]- Forget password
  /*---------------------------Social Sign in---------------------------*/
}