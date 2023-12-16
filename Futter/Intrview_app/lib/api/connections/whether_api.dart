import 'dart:convert';
import 'package:http/http.dart' as http;

class WhetherApi {
  Future<String> getWhether() async {
    final _response = await http.get(Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=3f893233c4354fe3ba6201612232310&q=Europe Saratov&aqi=no'));
    if (_response.statusCode == 200) {
      final _json = json.decode(_response.body);

      return _json['current']['temp_c'].toString();
    } else {
      return 'error ${_response.statusCode}';
    }
  }
}


      // Uri.parse('X-Gismeteo-Token: 56b30cb255.3443075' ),
