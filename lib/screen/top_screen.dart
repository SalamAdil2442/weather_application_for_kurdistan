import 'package:app_weather_kurdistan/screen/dima.dart';
import 'package:flutter/material.dart';

Widget top(
  String location,
  String temp,
  String desc,
) {
  return Center(
    child: Container(
      height: dima.height160,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            width: dima.width3,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(location,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(
            height: dima.width7,
          ),
          Text(
            temp,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: dima.width7,
          ),
          Text(desc,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
        ],
      ),
    ),
  );
}
