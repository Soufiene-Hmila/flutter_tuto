import 'package:flutter_tuto/model/user_response.dart';
import 'package:flutter_tuto/view_model/api_client.dart';

class Repository {
  final _client = ApiClient();
  Future<UserResponse> getListUser() async {
    return _client.fetchListUser();
  }

}
