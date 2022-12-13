import 'dart:convert';

import 'package:app_weather_kurdistan/mod/mod_today.dart';
import 'package:http/http.dart'as http;

class weatherapiclien {
  Future<Weather1>? getcrunntapi(String? Location) async {
    var apiweather = Uri.parse(
        "http://api.openweathermap.org/data/2.5/weather?q=$Location&appid=1623c15421770644f02651b6058fd67c&units=metric");

    var reponse = await http.get(apiweather);
    var body = jsonDecode(reponse.body);
    print(Weather1.fromjson(body).city_name);
    return Weather1.fromjson(body);
  }
}
