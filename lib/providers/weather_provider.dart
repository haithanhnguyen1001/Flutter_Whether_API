import 'package:flutter/widgets.dart';
import 'package:whetherapp/models/weather.dart';
import 'package:whetherapp/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiRepository.callApiGetWeather();
    return result;
  }

  Future<List<WeatherDetail>> getWeatherDetail() async {
    List<WeatherDetail> result = await ApiRepository.callApiGetWeatherDetail();
    return result;
  }
}
