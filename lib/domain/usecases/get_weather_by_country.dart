import 'package:weather/domain/entities/weather.dart';
import 'package:weather/domain/repos/base_weather_repo.dart';

class GetWeatherByCountry
{
  final BaseWeatherRepository repository;

  GetWeatherByCountry(this.repository);

  Future<Weather> execute(String cityName)
  async{
    return await repository.getWeatherByCityName(cityName);
  }
}