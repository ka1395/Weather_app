import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/resources/app_them_data.dart';
import '../../../../../core/resources/json_assets.dart';

class WeatherTitlePage extends StatelessWidget {
  const WeatherTitlePage({
    super.key,
    required this.temperature,
    required this.description,
    required this.temperatureUnit,
  });
  final String temperature;
  final String description;
  final String temperatureUnit;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Current Temperature
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(temperature,
                    style: theme.headlineLarge!.copyWith(
                      fontFamily: AppThemData.extraBold,
                      fontSize: 60,
                      height: 0.9,
                    )),
                Text(temperatureUnit, style: theme.headlineSmall),
              ],
            ),
            const SizedBox(height: 10),

            Text(description, style: theme.headlineLarge),

            // Weather Description
          ],
        ),
        SizedBox(
            width: 100,
            height: 100,
            child: LottieBuilder.asset(JsonAssets.homeAnimation)),
      ],
    );
  }
}
