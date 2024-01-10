import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:t_ecommerce/features/authentication/models/user_model.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  ///Function to save userdata to fire store
  Future<void> saveUserRecord(UserModel user) async{
    try{
      await _db.collection("Users").doc(user.id).set(user.toJson());

    }catch (e){
      throw "Something went wrong, please try again";
    }
  }
}