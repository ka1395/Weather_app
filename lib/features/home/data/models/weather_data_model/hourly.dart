import '../../../domain/entitys/home_entitiy.dart';

class Hourly {
  List<String>? time;
  List<double>? temperature2m;

  Hourly({this.time, this.temperature2m});

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
        time: json['time'] as List<String>?,
        temperature2m: json['temperature_2m'] as List<double>?,
      );

  Map<String, dynamic> toJson() => {
        'time': time,
        'temperature_2m': temperature2m,
      };
}

extension HourlyExtension on Hourly {
  List<HourlyEntity> toHourlyEntity() {
    List<HourlyEntity> hourlyList = [];

    for (int i = 0; i < time!.length; i++) {
      // Format time to show hour in 12-hour format (e.g., "2 PM", "11 AM")
      final timeString = time![i];
      final hour = int.parse(timeString.split('T')[1].split(':')[0]);
      final formattedTime = _formatHourTo12Hour(hour);

      // Get temperature and convert to double for icon mapping
      final temperature = temperature2m![i];

      hourlyList.add(HourlyEntity(
        time: formattedTime,
        temperature: temperature.toString(),
        icon: getWeatherIcon(temperature), // Map icon based on temperature
      ));
    }
    return hourlyList;
  }

  /// Convert 24-hour format to 12-hour format with AM/PM
  String _formatHourTo12Hour(int hour) {
    if (hour == 0) return '12 AM';
    if (hour == 12) return '12 PM';
    if (hour > 12) return '${hour - 12} PM';
    return '$hour AM';
  }

  getWeatherIcon(double temperature) {
    if (temperature >= 30) {
      return '☀️'; // Hot - Sunny
    } else if (temperature >= 25) {
      return '🌤️'; // Warm - Partly sunny
    } else if (temperature >= 20) {
      return '⛅'; // Mild - Cloudy
    } else if (temperature >= 15) {
      return '🌥️'; // Cool - Mostly cloudy
    } else if (temperature >= 10) {
      return '🌦️'; // Cold - Light rain
    } else if (temperature >= 5) {
      return '🌧️'; // Very cold - Rain
    } else if (temperature >= 0) {
      return '🌨️'; // Freezing - Snow
    } else {
      return '❄️'; // Below freezing - Heavy snow
    }
  }
}
