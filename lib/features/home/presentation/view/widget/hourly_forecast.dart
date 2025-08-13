import 'package:flutter/material.dart';

import '../../../../../core/resources/app_them_data.dart';
import '../../../domain/entitys/home_entitiy.dart';
import 'hourly_forecast_item.dart';

class HourlyForecast extends StatelessWidget {
  const HourlyForecast({super.key, required this.hourlyList});
  final List<HourlyEntity> hourlyList;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hourly Forecast',
            style: theme.headlineSmall!.copyWith(
              color: AppThemData.white,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hourlyList.length,
              itemBuilder: (context, index) {
                return HourlyForecastItem(
                  time: hourlyList[index].time,
                  temperature: hourlyList[index].temperature,
                  icon: hourlyList[index].icon,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
