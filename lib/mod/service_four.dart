import 'dart:convert';

import 'package:app_weather_kurdistan/mod/four_days_f.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class fourdayss {
  Future<fore_days>? getfourdayd(String? loc) async {
    var apifourdays = Uri.parse(
        "http://api.openweathermap.org/data/2.5/forecast?q=$loc&appid=cd516b91b4510742938c66b885891430&units=metric");
    var respons = await http.get(apifourdays);
    var body = json.decode(respons.body);

    print("test API four days");

    return fore_days.formjson(body);
  }
}
