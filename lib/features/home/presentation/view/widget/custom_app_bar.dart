import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/app_them_data.dart';
import '../../../../../core/resources/get_it.dart';
import '../../../../../core/utils/app_cubit/app_cubit.dart';
import '../../../../../core/utils/app_cubit/app_states.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.nameCountry,
    required this.lastUpdate,
  });
  final String nameCountry;
  final String lastUpdate;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    final appCubit = instanceGetIt<AppCubit>();
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              nameCountry,
              style: theme.titleMedium!.copyWith(
                fontSize: 30,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
        BlocBuilder<AppCubit, AppStates>(
            buildWhen: (previous, current) =>
                current is NetworkStatusChangedState,
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  appCubit.isConnected
                      ? Icon(
                          Icons.wifi,
                          color: AppThemData.semanticColorSuccess07,
                        )
                      : Icon(
                          Icons.wifi_off,
                          color: AppThemData.semanticColorError08,
                        ),
                  const SizedBox(width: 8),
                  Text(
                    appCubit.isConnected ? "online" : "offline",
                    style: TextStyle(
                      fontFamily: AppThemData.medium,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text("last update: $lastUpdate", style: theme.titleSmall),
                ],
              );
            })
      ],
    );
  }
}
