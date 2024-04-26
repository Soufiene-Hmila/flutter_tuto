import 'dart:async';

import 'package:flutter_tuto/model/user_response.dart';
import 'package:flutter_tuto/view_model/repository.dart';

class Bloc {

  final Repository _repository = Repository();

  final StreamController<UserResponse> _streamController = StreamController<UserResponse>();
  Stream<UserResponse> get streamer => _streamController.stream;

  void fetchDate() {
    _repository.getListUser().then((value) =>
        _streamController.sink.add(value));
  }

}
