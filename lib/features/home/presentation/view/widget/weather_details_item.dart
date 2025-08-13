import 'package:flutter/material.dart';

import '../../../../../core/resources/app_them_data.dart';

class WeatherDetailsItem extends StatelessWidget {
  const WeatherDetailsItem(
      {super.key,
      required this.icon,
      required this.value,
      required this.label});
  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Column(
      children: [
        Icon(
          icon,
          color: AppThemData.white,
          size: 24,
        ),
        const SizedBox(height: 8),
        Text(value,
            style: theme.titleMedium!.copyWith(
              fontFamily: AppThemData.semiBold,
            )),
        Text(label, style: theme.labelSmall),
      ],
    );
  }
}
