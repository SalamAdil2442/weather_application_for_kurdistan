import 'package:app_weather_kurdistan/screen/dima.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget bottom(
    String temp_forut,
    String four_des,
    String four_min,
    String four_max,
    String temp_1,
    String temp_2,
    String temp_3,
    String four_min_1,
    String four_min_2,
    String four_min_3,
    String four_max_1,
    String four_max_2,
    String four_max_3,
    String four_des_1,
    String four_des_2,
    String four_des_3) {
  TextStyle da =
      TextStyle(fontWeight: FontWeight.w500, overflow: TextOverflow.clip);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: dima.height160,
        width: dima.width100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dima.raduis20),
          border: Border.all(
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Tomorrow",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic),
              ),
            )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Temp",
                  style: da,
                ),
                Text(
                  "$temp_forut",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.raduis20,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Max",
                  style: da,
                ),
                Text(
                  "$four_max",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Min",
                  style: da,
                ),
                Text(
                  "$four_min",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$four_des",
                  style: TextStyle(overflow: TextOverflow.clip),
                )
              ],
            ),
          ],
        ),
      ),
      Container(
        height: dima.height160,
        width: dima.width100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dima.raduis20),
          border: Border.all(
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding:
                  EdgeInsets.only(top: dima.height10, bottom: dima.height10),
              child: Text(
                "Next 2 days",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic),
              ),
            )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Temp",
                  style: da,
                ),
                Text(
                  "$temp_1",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Max",
                  style: da,
                ),
                Text(
                  "$four_max_1",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Min",
                  style: da,
                ),
                Text(
                  "$four_min_1",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$four_des_1",
                  style: da,
                )
              ],
            ),
          ],
        ),
      ),
      Container(
        height: dima.height160,
        width: dima.width100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dima.raduis20),
          border: Border.all(
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding:
                  EdgeInsets.only(top: dima.height10, bottom: dima.height10),
              child: Text(
                "Next 3 days",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic),
              ),
            )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Temp",
                  style: da,
                ),
                Text(
                  "$temp_2",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Max",
                  style: da,
                ),
                Text(
                  "$four_max_2",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Min",
                  style: da,
                ),
                Text(
                  "$four_min_2",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$four_des_2",
                  style: da,
                )
              ],
            ),
          ],
        ),
      ),
      Container(
        height: dima.height160,
        width: dima.width100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dima.raduis20),
          border: Border.all(
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding:
                  EdgeInsets.only(top: dima.height10, bottom: dima.height10),
              child: Text(
                "Next 4 days",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic),
              ),
            )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Temp",
                  style: da,
                ),
                Text(
                  "$temp_3",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Max",
                  style: da,
                ),
                Text(
                  "$four_max_3",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Min",
                  style: da,
                ),
                Text(
                  "$four_min_3",
                  style: da,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: dima.height10,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$four_des_3",
                  style: da,
                )
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
