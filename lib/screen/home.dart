import 'dart:ffi';

import 'package:app_weather_kurdistan/mod/four_days_f.dart';
import 'package:app_weather_kurdistan/mod/mod_today.dart';
import 'package:app_weather_kurdistan/mod/service.dart';
import 'package:app_weather_kurdistan/mod/service_four.dart';
import 'package:app_weather_kurdistan/screen/bottom.dart';
import 'package:app_weather_kurdistan/screen/center.dart';
import 'package:app_weather_kurdistan/screen/dima.dart';
import 'package:app_weather_kurdistan/screen/top_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  String Erbil = "Erbil";
  String Sulaymaniyah = "Sulaymaniyah";
  String duhok = "Duhok";
  String Halabja = "Halabja";
  String city = "kurdistan";

  fourdayss four = fourdayss();
  fore_days? date2;
  Future<void> getapi2() async {
    date2 = await four.getfourdayd(city);
  }

  weatherapiclien client = weatherapiclien();
  Weather1? date;
  Future<void> getdata() async {
    date = await client.getcrunntapi(city);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          future: getdata(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                top("${date!.city_name}", "${date!.temp}\u2103", "${date!.de}"),
                SizedBox(
                  height: dima.width3,
                ),
                Text(
                  "More Information",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: dima.width3,
                ),
                Addational_infomation(
                  "${date!.wind}",
                  "${date!.hunidity}",
                  "${date!.temp_max}\u2103",
                  "${date!.temp_min}\u2103",
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: dima.height29,
        ),
        FutureBuilder(
          future: getapi2(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return Container(
              // height: 120,
              width: double.infinity,
              child: Column(
                children: [
                  bottom(
                      "${date2!.temp_four}\u2103",
                      "${date2!.des_four}",
                      "${date2!.temp_four_min}\u2103",
                      "${date2!.temp_four_max}\u2103",
                      "${date2!.temp_1}\u2103",
                      "${date2!.temp_2}\u2103",
                      "${date2!.temp_3}\u2103",
                      "${date2!.temp_four_min_1}\u2103",
                      "${date2!.temp_four_min_2}\u2103",
                      "${date2!.temp_four_min_3}\u2103",
                      "${date2!.temp_four_max_1}\u2103",
                      "${date2!.temp_four_max_2}\u2103",
                      "${date2!.temp_four_max_3}\u2103",
                      "${date2!.des_four_1}",
                      "${date2!.des_four_2}",
                      "${date2!.des_four_3}")
                  //, loc, four_des, four_min, four_max)
                  //bottom("${date2!.temp_four}", "${date2!.des_four}",
                  //  "${date2!.temp_four_min}", "${date2!.temp_four_max}")
                ],
              ),
            );
          },
        ),
        SizedBox(
          height: dima.height29,
        ),
        Text(
          "Choose Your City",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: dima.height29,
        ),
        Container(
          // color: Colors.amber, //deepPurple,
          child: Padding(
            padding: EdgeInsets.only(left: dima.width3, right: dima.width3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (Erbil != null) {
                        setState(() {
                          city = Erbil;
                        });
                      }
                    },
                    child: Text("Erbil")),
                ElevatedButton(
                    onPressed: () {
                      if (Sulaymaniyah != null) {
                        setState(() {
                          city = Sulaymaniyah;
                        });
                      }
                    },
                    child: Text(
                      "Sulaymaniyah",
                    )),
                ElevatedButton(
                  onPressed: () {
                    if (Halabja != null) {
                      setState(() {
                        city = Halabja;
                      });
                    }
                  },
                  child: Text("Halabja"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (duhok != null) {
                      setState(() {
                        city = Halabja;
                      });
                    }
                  },
                  child: Text("Duhok"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
/**
 







 */