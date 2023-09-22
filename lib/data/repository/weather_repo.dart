import 'package:weather/data/datasource/remote_data_source.dart';
import 'package:weather/domain/entities/weather.dart';
import 'package:weather/domain/repos/base_weather_repo.dart';

class WeatherRepository implements BaseWeatherRepository
{
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String countryName)async
  {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }

}