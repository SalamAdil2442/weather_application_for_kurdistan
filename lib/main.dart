import 'package:app_weather_kurdistan/screen/home.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(centerTitle: true,
            title: Text("Weather App"),
          ),
          body: Column(
            children: [home_page()],
          )),
    );
  }
}
