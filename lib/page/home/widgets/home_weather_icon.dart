import 'package:flutter/material.dart';
import 'package:whetherapp/apps/utils/const.dart';

class HomeWeatherIcon extends StatelessWidget {
  const HomeWeatherIcon({super.key, required this.nameIcon});

  final String nameIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      padding: EdgeInsets.all(20.0),
      width: size.width / 2,
      child: Image.asset(
        AssetCustom.getLinkImg(nameIcon),
        fit: BoxFit.cover,
      ),
    );
  }
}
