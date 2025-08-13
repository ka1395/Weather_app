import 'dart:convert';

import 'package:objectbox/objectbox.dart';

import '../../../domain/entitys/home_entitiy.dart';
import 'objectbox.g.dart';

@Entity()
class HomeCashedDataEntity {
  HomeCashedDataEntity({
    this.id = 0,
    this.countryName = "",
    this.temperatureUnit = "",
    this.temperature = "",
    this.description = "",
    this.lastUpdate = "",
    this.humidity = "",
    this.windSpeed = "",
    this.minimumTemperature = "",
    this.maximumTemperature = "",
    this.hourlyJson = "", // store list as JSON
  });

  @Id()
  int id;

  String countryName;
  String temperatureUnit;
  String temperature;
  String description;
  String humidity;
  String lastUpdate;
  String windSpeed;
  String minimumTemperature;
  String maximumTemperature;

  String hourlyJson;
}

extension HomeCashedDataEntityExtension on HomeCashedDataEntity {
 
  HomeEntity toHomeEntity() {
    return HomeEntity(
      countryName: countryName,
      temperatureUnit: temperatureUnit,
      temperature: temperature,
      description: description,
      humidity: humidity,
      lastUpdate: lastUpdate,
      windSpeed: windSpeed,
      minimumTemperature: minimumTemperature,
      maximumTemperature: maximumTemperature,
      hourlyList: _convertHourlyListToEntity(),
    );
  }

  List<HourlyEntity> _convertHourlyListToEntity() {
    List<HourlyEntity> hourlyList = [];
    for (var element in jsonDecode(hourlyJson)) {
      hourlyList.add(HourlyEntity.fromJson(element));
    }
    return hourlyList;
  }
}
