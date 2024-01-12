import 'package:firebase_auth/firebase_auth.dart';
import 'package:t_ecommerce/data/repositories/user_data/user_repository.dart';
import 'package:t_ecommerce/exports.dart';
import 'package:t_ecommerce/features/authentication/models/user_model.dart';
import 'package:t_ecommerce/utils/popup_and_loader/loader.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  /// Save user from any registration provider
  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        // convert name to first name and last name
        final nameParts =
            UserModel.nameParts(userCredential.user!.displayName ?? "");
        final userName =
            UserModel.generateUserName(userCredential.user!.displayName ?? "");

        // Map user data
        final user = UserModel(
          id: userCredential.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          userName: userName,
          email: userCredential.user!.email ?? "",
          phoneNumber: userCredential.user!.phoneNumber ?? "",
          profilePic: userCredential.user!.photoURL ?? "",
        );

        // save user data to firebase Fire store
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      CustomLoader.warningSnackBar(
          title: "Data not saved",
          message: "Something went wrong, please try again");
    }
  }
}
