import 'package:dio/dio.dart';
import 'package:flutter_tuto/model/user_response.dart';
class ApiClient {
  final Dio _dioClient = Dio();
  final baseUrl = 'https://dummyjson.com';
  final endPoint = 'users';
  Future<UserResponse> fetchListUser() async {
    Response dioResponse = await _dioClient.get('$baseUrl/$endPoint');
    if(dioResponse.statusCode == 200){
      return UserResponse.fromJson(dioResponse.data);
    } else {
      throw 'Failed Get Data From Server';
    }
  }

}
