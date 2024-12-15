import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whetherapp/apps/config/theme_custom.dart';
import 'package:whetherapp/page/home/home_page.dart';
import 'package:whetherapp/providers/weather_provider.dart';

import 'bottom_navigation_custom/bottom_custom.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: MaterialApp(
        theme: ThemeCustom.themeLight,
        debugShowCheckedModeBanner: false,
        home: const BottomNavigationCustom(),
      ),
    );
  }
}
