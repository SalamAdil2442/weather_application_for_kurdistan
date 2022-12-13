import 'package:app_weather_kurdistan/screen/dima.dart';
import 'package:flutter/material.dart';

Widget Addational_infomation(
    String wind, String humidity, String temp_max, String temp_min) {
  TextStyle number = const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontStyle: FontStyle.italic,
      fontSize: 20,
      fontWeight: FontWeight.w800);
  TextStyle infotext = const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 20,
      fontWeight: FontWeight.w500);
  return Padding(
    padding: const EdgeInsets.only(left: 3, right: 3),
    child: Container(
      height: dima.height70,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
          ),
          borderRadius: BorderRadius.circular(dima.height10),
          color: Colors.cyan.shade200),
      width: double.infinity,
      padding: EdgeInsets.only(left: dima.width3, right: dima.width3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wind Speed",
                    style: infotext,
                  ),
                  SizedBox(
                    height: dima.height12,
                  ),
                  Text("Humidity", style: infotext),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon(Icons.speed,color: Colors.amber,),

                  Text("$wind", style: number),
                  SizedBox(
                    height: dima.height12,
                  ),
                  Text("$humidity", style: number),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Temp Max", style: infotext),
                  SizedBox(
                    height: dima.height12,
                  ),
                  Text("Temp Min", style: infotext),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$temp_max", style: number),
                  SizedBox(
                    height: dima.height12,
                  ),
                  Text("$temp_min", style: number),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
