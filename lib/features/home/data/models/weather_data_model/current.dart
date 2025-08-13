class Current {
  String? time;
  int? interval;
  double? temperature2m;
  int? weatherCode;
  double? windSpeed10m;
  double? temperature2mMin;
  double? temperature2mMax;
  String? weatherDescription;

  Current({
    this.time,
    this.interval,
    this.temperature2m,
    this.weatherCode,
    this.windSpeed10m,
    this.temperature2mMin,
    this.temperature2mMax,
    this.weatherDescription,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        time: json['time'] as String?,
        interval: json['interval'] as int?,
        temperature2m: (json['temperature_2m'] as num?)?.toDouble(),
        weatherCode: json['weather_code'] as int?,
        windSpeed10m: (json['wind_speed_10m'] as num?)?.toDouble(),
        temperature2mMin: (json['temperature_2m_min'] as num?)?.toDouble(),
        temperature2mMax: (json['temperature_2m_max'] as num?)?.toDouble(),
        weatherDescription: json['weather_description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'time': time,
        'interval': interval,
        'temperature_2m': temperature2m,
        'weather_code': weatherCode,
        'wind_speed_10m': windSpeed10m,
        'temperature_2m_min': temperature2mMin,
        'temperature_2m_max': temperature2mMax,
        'weather_description': weatherDescription,
      };
}
