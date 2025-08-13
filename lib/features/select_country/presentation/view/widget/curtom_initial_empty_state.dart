import 'package:flutter/material.dart';

import '../../../../../core/resources/app_them_data.dart';
import '../../../../../core/resources/responive.dart';

class InitialEmptyState extends StatelessWidget {
  const InitialEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.travel_explore,
            size: Responsive.width(20, context),
            color: AppThemData.white,
          ),
          const SizedBox(height: 16),
          Text(
            'Search for a city',
            textAlign: TextAlign.center,
            style: theme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Start typing a city or country name to see results',
            textAlign: TextAlign.center,
            style: theme.titleMedium,
          ),
        ],
      ),
    );
  }
}
