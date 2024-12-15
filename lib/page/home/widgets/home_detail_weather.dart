import 'package:flutter/material.dart';

class HomeDetailWeather extends StatelessWidget {
  const HomeDetailWeather(
      {super.key, required this.humidity, required this.speedWind});

  final num humidity;
  final num speedWind;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset("assets/images/icons/humidity.png"),
            Text(
              "${speedWind}km/h",
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          children: [
            Image.asset("assets/images/icons/Vector-1.png"),
            SizedBox(
              height: 5,
            ),
            Text(
              "${humidity}%",
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
