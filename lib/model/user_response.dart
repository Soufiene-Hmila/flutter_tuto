import 'package:flutter_tuto/model/user_data.dart';

class UserResponse {
  final List<UserData>? users;

  UserResponse({
      this.users,
  });

  factory UserResponse.fromJson(dynamic json) {
    return UserResponse(
      users: json['users'] != null ? (json['users']
      as List).map((e) => UserData.fromJson(e)).toList() : null
    );
  }

}