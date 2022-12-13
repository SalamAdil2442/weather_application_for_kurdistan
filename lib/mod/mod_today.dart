class Weather1 {
  String? de;
  String? city_name;
  double? temp;
  int? hunidity;

  double? wind;
  double? temp_max;
  double? temp_min;

  Weather1(
      {this.temp_max,
      this.temp_min,
      this.de,
      this.city_name,
      this.temp,
      this.hunidity,
      this.wind,
     });

  Weather1.fromjson(Map<String, dynamic> json) {
    city_name = json["name"];
    temp = json["main"]["temp"];
    hunidity = json["main"]["humidity"];
    wind = json["wind"]["speed"];
  //  pressure = json["main"]["pressure"];
    de = json["weather"][0]["description"];
    temp_min = json["main"]["temp_min"];
    temp_max = json["main"]["temp_max"];

    //de:json["weather"][0]["description"];
  }
}
