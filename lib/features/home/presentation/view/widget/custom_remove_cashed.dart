import 'package:flutter/material.dart';

import '../../../../../core/resources/app_them_data.dart';
import '../../../../../core/resources/get_it.dart';
import '../../../../../core/resources/routs.dart';
import '../../../../../core/utils/app_cubit/app_cubit.dart';

class CustomRemoveCashe extends StatelessWidget {
  const CustomRemoveCashe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red.shade400,
            Colors.red.shade600,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: AppThemData.semanticColorError08.withValues(alpha: 0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {
            instanceGetIt.get<AppCubit>().clearCache();
            Navigator.pushReplacementNamed(context, AppRouts.selectCountry);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Cache cleared"),
                backgroundColor: AppThemData.semanticColorError08,
                duration: Duration(seconds: 2),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.cleaning_services_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  "Clear Cache",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
