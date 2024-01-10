import 'package:t_ecommerce/utils/formatters/formatter.dart';

class UserModel {
  final String id,
      firstName,
      lastName,
      userName,
      email,
      phoneNumber,
      profilePic;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePic,
  });

  ///Helper func to get full name
  String get fullName => '$firstName $lastName';

  ///func to get format phone num
  String get formattedPhoneNum => TFormatter.formatPhoneNumber(phoneNumber);

  ///func to split full name
  static List<String> nameParts(fullName) => fullName.split(" ");

  ///func to generate username from full name
  static String generateUserName(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";
    String camelCaseUserName = '$firstName$lastName';
    String userNameWithPrefix = 'cwt_$camelCaseUserName';
    return userNameWithPrefix;
  }

  ///func to create empty user model

  static UserModel empty() => UserModel(
        id: "",
        firstName: "",
        lastName: "",
        userName: "",
        email: "",
        phoneNumber: "",
        profilePic: "",
      );

  ///converting model to JSON structure for sorting data in firebase
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'UserName': userName,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePic': profilePic,
    };
  }

  ///Factory method to create a user model from firebase document snapshot
  // factory UserModel.fromSnapshot(
  //     DocumentSnapshot<Map<String, dynamic>> document) {
  //   if (document.data() != null) {
  //     final data = document.data()!;
  //     return UserModel(
  //       id: document.id,
  //       firstName: data["FirstName"] ?? "",
  //       lastName: data["LastName"] ?? "",
  //       userName: data["UserName"] ?? "",
  //       email: data["Email"] ?? "",
  //       phoneNumber: data["PhoneNumber"] ?? "",
  //       profilePic: data["ProfilePic"] ?? "",
  //     );
  //   }
  // }
}
