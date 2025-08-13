import 'package:flutter/material.dart';

import '../../../../../core/resources/app_them_data.dart';
import '../../../../../core/resources/responive.dart';

class HourlyForecastItem extends StatelessWidget {
  const HourlyForecastItem(
      {super.key,
      required this.time,
      required this.temperature,
      required this.icon});
  final String time;
  final String temperature;
  final String icon;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Container(
      width: Responsive.width(27, context),
      // height: 150,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: AppThemData.white.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppThemData.white.withValues(alpha: 0.2),
            width: 1,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: theme.titleLarge),
          const SizedBox(height: 8),
          Text(
            icon,
            style: theme.headlineLarge!.copyWith(fontSize: 45),
          ),
          const SizedBox(height: 8),
          Text(
            temperature,
            style: theme.titleLarge,
          ),
        ],
      ),
    );
  }
}
