class CurrentUnits {
  String? time;
  String? interval;
  String? temperature2m;
  String? weatherCode;
  String? windSpeed10m;

  CurrentUnits({
    this.time,
    this.interval,
    this.temperature2m,
    this.weatherCode,
    this.windSpeed10m,
  });

  factory CurrentUnits.fromJson(Map<String, dynamic> json) => CurrentUnits(
        time: json['time'] as String?,
        interval: json['interval'] as String?,
        temperature2m: json['temperature_2m'] as String?,
        weatherCode: json['weather_code'] as String?,
        windSpeed10m: json['wind_speed_10m'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'time': time,
        'interval': interval,
        'temperature_2m': temperature2m,
        'weather_code': weatherCode,
        'wind_speed_10m': windSpeed10m,
      };
}
