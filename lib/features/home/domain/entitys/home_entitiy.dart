import 'dart:convert';

import '../../data/models/local_model/home_cashed_entity.dart';

class HomeEntity {
  HomeEntity({
    this.id,
    required this.countryName,
    required this.temperatureUnit,
    required this.temperature,
    required this.description,
    required this.humidity,
    required this.windSpeed,
    required this.minimumTemperature,
    required this.maximumTemperature,
    required this.hourlyList,
    required this.lastUpdate,
  });

  final int? id;
  final String countryName;
  final String temperatureUnit;
  final String temperature;
  final String description;
  final String humidity;
  final String windSpeed;
  final String minimumTemperature;
  final String maximumTemperature;
  final String lastUpdate;
  final List<HourlyEntity> hourlyList;

  static HomeEntity getEmptyHomeEntity() {
    return HomeEntity(
      countryName: "",
      temperatureUnit: "",
      temperature: "",
      description: "",
      humidity: "",
      windSpeed: "",
      minimumTemperature: "",
      lastUpdate: "",
      maximumTemperature: "",
      hourlyList: [],
    );
  }
}

class HourlyEntity {
  HourlyEntity({
    required this.time,
    required this.temperature,
    required this.icon,
  });
  final String time;
  final String temperature;
  final String icon;


  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'temperature': temperature,
      'icon': icon,
    };
  }
  factory HourlyEntity.fromJson(Map<String, dynamic> json) => HourlyEntity(
        time: json['time'] as String,
        temperature: json['temperature'] as String,
        icon: json['icon'] as String,
      );
}

class RequestHomeEntity {
  RequestHomeEntity({
    required this.latitude,
    required this.longitude,
  });
  final double latitude;
  final double longitude;
}

extension HomeCashedSataExtension on HomeEntity {
  HomeCashedDataEntity toHomeCashedDataEntity() {
    return HomeCashedDataEntity(
      countryName: countryName,
      lastUpdate: lastUpdate,
      temperatureUnit: temperatureUnit,
      temperature: temperature,
      description: description,
      humidity: humidity,
      windSpeed: windSpeed,
      minimumTemperature: minimumTemperature,
      maximumTemperature: maximumTemperature,
      hourlyJson:_convertHourlyListToString() ,
    );

  }

  String _convertHourlyListToString() {
  List<Map<String, dynamic>> jsonList =[];
  for(var element in hourlyList) {
    jsonList.add(element.toJson());
  }
  return jsonEncode(jsonList);
}

 

}


