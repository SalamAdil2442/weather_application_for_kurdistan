class fore_days {
  double? temp_four;
  double? temp_four_max;
  double? temp_four_min;
  String? des_four;

  //next day
  double? temp_1;
  double? temp_four_max_1;
  double? temp_four_min_1;
  String? des_four_1;

//next 2 days

  double? temp_2;
  double? temp_four_max_2;
  double? temp_four_min_2;
  String? des_four_2;

//next 3 days

  double? temp_3;
  double? temp_four_max_3;
  double? temp_four_min_3;
  String? des_four_3;

  fore_days({
    this.temp_four,
    this.temp_four_max,
    this.temp_four_min,
    this.des_four,
    this.temp_1,
    this.temp_four_max_1,
    this.temp_four_min_1,
    this.des_four_1,
    this.temp_2,
    this.temp_four_max_2,
    this.temp_four_min_2,
    this.des_four_2,
    this.temp_3,
    this.temp_four_max_3,
    this.temp_four_min_3,
    this.des_four_3,
  });

  fore_days.formjson(Map<String, dynamic> json) {
    temp_four = json["list"][0]["main"]["temp"];
    temp_four_max = json["list"][0]["main"]["temp_max"];
    temp_four_min = json["list"][0]["main"]["temp_min"];
    des_four = json["list"][0]["weather"][0]["main"];
    //1

    temp_1 = json["list"][1]["main"]["temp"];
    temp_four_max_1 = json["list"][1]["main"]["temp_max"];
    temp_four_min_1 = json["list"][1]["main"]["temp_min"];
    des_four_1 = json["list"][1]["weather"][0]["main"];

    //2
    temp_2 = json["list"][2]["main"]["temp"];
    temp_four_max_2 = json["list"][2]["main"]["temp_max"];
    temp_four_min_2 = json["list"][2]["main"]["temp_min"];
    des_four_2 = json["list"][2]["weather"][0]["main"];
    //3
    temp_3 = json["list"][3]["main"]["temp"];
    temp_four_max_3 = json["list"][3]["main"]["temp_max"];
    temp_four_min_3 = json["list"][3]["main"]["temp_min"];
    des_four_3 = json["list"][3]["weather"][0]["main"];
  }
}
