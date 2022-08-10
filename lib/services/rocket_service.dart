import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testapp/config.dart';

import '../data/rocket.dart';

class RocketService {
  static Future<Rocket?> getRocket() async {
    final response = await http.get(Uri.parse("${Config.BACKEND_URL}rockets/"));

    if (response.statusCode == 200) {
      return Rocket.fromJSON(jsonDecode(response.body));
    }
  }

  static Future<List<Rocket>?> getRockets() async {
    final response = await http.get(Uri.parse("${Config.BACKEND_URL}rockets/"));

    if(response.statusCode==200){
      return jsonDecode(response.body).map<Rocket>((data){
        return Rocket.fromJSON(data);
      }).toList();
    }
  }
}
