import 'package:flutter/material.dart';

import '../../../../../core/resources/app_them_data.dart';
import '../../../../../core/resources/responive.dart';
import '../../../domain/entitys/city_data.dart';

class CityCardWidget extends StatelessWidget {
  const CityCardWidget({super.key, required this.city, required this.onTap});
  final CityData city;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppThemData.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppThemData.white,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppThemData.assetColorDarkGrey100,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap:onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // City Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      city.name,
                      style: theme.headlineMedium!.copyWith(
                        color: AppThemData.assetColorGrey900,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      city.country,
                      style: theme.titleMedium!.copyWith(
                        color: AppThemData.assetColorGrey600,
                      ),
                    ),
                  ],
                ),
              ),

              // Arrow Icon
              Icon(
                Icons.arrow_forward_ios,
                color: AppThemData.assetColorGrey600,
                size: Responsive.width(4, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
