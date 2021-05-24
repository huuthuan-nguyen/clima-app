import 'package:clima_app/services/location.dart';
import 'package:clima_app/services/networking.dart';

const apiKey = "443d928a68698e3ccfa85cac5cb32d1c";
const openWeatherMapDomain = "api.openweathermap.org";
const openWeatherMapPath = "/data/2.5/weather";

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        uri: Uri.https(openWeatherMapDomain, openWeatherMapPath, {
      'lat': location.latitude.toString(),
      'lon': location.longitude.toString(),
      'appid': apiKey,
      'units': 'metric',
    }));

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return "🌩";
    } else if (condition < 400) {
      return "🌧";
    } else if (condition < 600) {
      return "☔️";
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp < 10) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
