import '../../../domain/entitys/home_entitiy.dart';
import 'current.dart';
import 'current_units.dart';
import 'hourly.dart';
import 'hourly_units.dart';

class WeatherDataModel extends HomeEntity {
  String? nameCity;
  double? latitude;
  double? longitude;
  String? timezone;
  String? timezoneAbbreviation;
  double? elevation;
  CurrentUnits? currentUnits;
  Current? current;
  HourlyUnits? hourlyUnits;
  Hourly? hourly;

  WeatherDataModel({
     this.nameCity,
    this.latitude,
    this.longitude,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    this.currentUnits,
    this.current,
    this.hourlyUnits,
    this.hourly,
  }) : super(
          countryName: nameCity ?? '',
          lastUpdate: current!.time ?? '',
          temperatureUnit: currentUnits!.temperature2m!,
          temperature: current.temperature2m.toString(),
          description: current.weatherDescription ?? '',
          humidity: current.windSpeed10m.toString(),
          windSpeed: current.windSpeed10m.toString(),
          minimumTemperature: current.temperature2mMin.toString(),
          maximumTemperature: current.temperature2mMax.toString(),
          hourlyList: hourly!.toHourlyEntity(),
        );

  factory WeatherDataModel.fromJson(Map<String, dynamic> json) {
    return WeatherDataModel(
      nameCity: json['nameCity'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      timezoneAbbreviation: json['timezone_abbreviation'] as String?,
      elevation: json['elevation'] as double?,
      currentUnits: json['current_units'] == null
          ? null
          : CurrentUnits.fromJson(
              json['current_units'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
      hourlyUnits: json['hourly_units'] == null
          ? null
          : HourlyUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
      hourly: json['hourly'] == null
          ? null
          : Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longitude': longitude,
        'timezone': timezone,
        'timezone_abbreviation': timezoneAbbreviation,
        'elevation': elevation,
        'current_units': currentUnits?.toJson(),
        'current': current?.toJson(),
        'hourly_units': hourlyUnits?.toJson(),
        'hourly': hourly?.toJson(),
      };
}
