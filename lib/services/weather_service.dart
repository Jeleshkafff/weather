import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:untitled2/models/weather.dart';


class WeatherService {
  Future<Weather> getWeatherByCityName(String cityName) async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName,ru&appid=451f6e158a88eae7325eee109ba0d386'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      final temperature = (data['main']['temp'] - 273.15).toDouble();
      final temperature2 = (((data['main']['temp'] -273.15 )* 1.8) + 32).toDouble();
      final description = data['weather'][0]['main'];
      final wind = data['wind']['speed'].toDouble();

      return Weather(
        temperature: temperature,
        temperature2: temperature2,
        description: description,
        wind:wind,
      );
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
