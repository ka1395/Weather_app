import 'package:flutter/material.dart';

import '../../../../../core/resources/app_them_data.dart';
import 'weather_details_item.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({
    super.key,
    required this.windSpeed,
    required this.maximumTemperature,
    required this.minimumTemperature,
  });
  final String windSpeed;
  final String maximumTemperature;
  final String minimumTemperature;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppThemData.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppThemData.white.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          WeatherDetailsItem(
            icon: Icons.air,
            value: windSpeed,
            label: 'Wind',
          ),
          WeatherDetailsItem(
            icon: Icons.arrow_upward,
            value: maximumTemperature,
            label: 'Maximum',
          ),
          WeatherDetailsItem(
            icon: Icons.arrow_downward,
            value: minimumTemperature,
            label: 'Minimum',
          ),
        ],
      ),
    );
  }
}
