import 'package:flutter/material.dart';

import '../../../../../core/resources/responive.dart';

class NoResultsState extends StatelessWidget {
  const NoResultsState({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/no_results_page.png',
              width: Responsive.width(30, context),
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            Text(
              'No cities found',
              textAlign: TextAlign.center,
              style: theme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Try a different spelling or search another city',
              textAlign: TextAlign.center,
              style: theme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
