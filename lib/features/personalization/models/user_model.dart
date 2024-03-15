import 'package:ecommerce_app/utils/formatters/formatter.dart';

/// MOdel class to represent user data i.e. to map raw data to user data
class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profileImg;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profileImg,
  });

  // helper function to access fullname
  String get fullName => '$firstName $lastName';

  String get formattedPhoneNum => TFormatter.formatPhoneNumber(phoneNumber);

  /// converter for model to JSON structure for storing data in firebase
  Map<String, dynamic> toJSON() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'UserName': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfileImage': profileImg,
    };
  }
}
