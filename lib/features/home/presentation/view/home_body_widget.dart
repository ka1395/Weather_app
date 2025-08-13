import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/network/preferences.dart';
import '../../../../core/resources/app_them_data.dart';
import '../../../../core/resources/routs.dart';
import '../../../select_country/domain/entitys/city_data.dart';
import '../../domain/entitys/home_entitiy.dart';
import '../view_model/cubit/home_cubit.dart';
import 'widget/custom_app_bar.dart';
import 'widget/custom_remove_cashed.dart';
import 'widget/hourly_forecast.dart';
import 'widget/weather_Title_page.dart';
import 'widget/weather_details.dart';

class HomeBodyWidget extends StatefulWidget {
  const HomeBodyWidget({
    super.key,
  });

  @override
  State<HomeBodyWidget> createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  late HomeEntity homeEntity;
  late HomeCubit homeCubit;
  late CityData currentCity;

  @override
  void initState() {
    super.initState();
    homeCubit = context.read<HomeCubit>();
    homeEntity = homeCubit.homeEntity!;
    currentCity = CityData.fromJson(
        Preferences.getJsonData(key: Preferences.currentCityKey));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBar(
          nameCountry: currentCity.name,
          lastUpdate: homeEntity.lastUpdate,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRouts.selectCountry);
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppThemData.backgroundGradient,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                // App Bar

                // SliverAppBar(
                //   expandedHeight: 80,
                //   // floating: false,
                //   // pinned: true,
                //   // automaticallyImplyLeading: false,
                //   flexibleSpace:
                //   actions: [
                //     IconButton(
                //       icon: const Icon(Icons.search, color: Colors.white),
                //       onPressed: () {
                //         Navigator.pushNamed(context, AppRouts.selectCountry);
                //       },
                //     ),
                //   ],
                // ),

                // Current Weather Section
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WeatherTitlePage(
                        temperature: homeEntity.temperature,
                        description: homeEntity.description,
                        temperatureUnit: homeEntity.temperatureUnit,
                      ),

                      const SizedBox(height: 32),
                      // Weather Details Grid
                      WeatherDetails(
                        windSpeed: homeEntity.windSpeed,
                        maximumTemperature: homeEntity.maximumTemperature,
                        minimumTemperature: homeEntity.minimumTemperature,
                      ),
                    ],
                  ),
                ),

                // Hourly Forecast
                HourlyForecast(
                  hourlyList: homeEntity.hourlyList,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CustomRemoveCashe(),
    );
  }
}
