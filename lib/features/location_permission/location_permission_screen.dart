import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../core/resources/json_assets.dart';
import '../../core/resources/responive.dart';
import '../../core/resources/routs.dart';
import '../../core/utils/app_cubit/app_cubit.dart';
import '../../core/utils/app_cubit/app_states.dart';

class LocationPermissionScreen extends StatelessWidget {
  const LocationPermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppStates>(
        listener: (context, state) {
          if (state is AppPermissionGrantedState) {
            Navigator.pushReplacementNamed(context, AppRouts.homeScreen);
          } else if (state is AppPermissionDeniedState) {
            Navigator.pushReplacementNamed(context, AppRouts.selectCountry);
          }
        },
        child: Scaffold(
          body: Center(
            child: SizedBox(
              height: Responsive.height(15, context),
              child: Lottie.asset(JsonAssets.loading),
            ),
          ),
        ));
  }
}
