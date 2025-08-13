class HourlyUnits {
  String? time;
  String? temperature2m;

  HourlyUnits({this.time, this.temperature2m});

  factory HourlyUnits.fromJson(Map<String, dynamic> json) => HourlyUnits(
        time: json['time'] as String?,
        temperature2m: json['temperature_2m'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'time': time,
        'temperature_2m': temperature2m,
      };
}
