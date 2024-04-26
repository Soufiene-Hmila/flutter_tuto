import 'package:equatable/equatable.dart';

class UserData extends Equatable{

  final int? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? username;
  final String? image;

  const UserData({
      this.id, 
      this.firstName, 
      this.lastName,
      this.email, 
      this.phone, 
      this.username,
      this.image,
  });

  factory UserData.fromJson(dynamic json) {
    return UserData(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      phone: json['phone'],
      username: json['username'],
      image: json['image'],
    );
  }

  @override
  List<Object?> get props => [
    id,
    firstName,
    lastName,
    email,
    phone,
    username,
    image,
  ];

}