import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mobile_app_sample/datamodels/user.dart';

@lazySingleton
class Api {
  static const endpoint = 'http://127.0.0.1';

  var client = new http.Client();

  Future<User> getUserProfile(int userId) async {
    var response = await client.get('$endpoint/user/$userId');
    return User.fromJson(json.decode(response.body));
  }
}
