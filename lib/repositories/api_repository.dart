import 'package:dio/dio.dart';
import 'package:whetherapp/apps/utils/const.dart';
import 'package:whetherapp/models/weather.dart';

class ApiRepository {
  static Future<WeatherData> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          "https://api.openweathermap.org/data/2.5/weather?lat=16,47336&lon=107,56792&units=metric&appid=${MyKey.api_token}");
      final data = res.data;
      WeatherData result = WeatherData.fromMap(data);
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  static Future<List<WeatherDetail>> callApiGetWeatherDetail() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          "https://api.openweathermap.org/data/2.5/forecast?lat=16,47336&lon=107,56792&units=metric&appid=${MyKey.api_token}");
      final data = res.data['list'];
      List<WeatherDetail> result = List<WeatherDetail>.from(
          data.map((e) => WeatherDetail.fromMap(e)).toList());
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
