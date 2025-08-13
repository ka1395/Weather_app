import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/network/preferences.dart';
import '../../../../../core/resources/get_it.dart';
import '../../../../../core/utils/app_cubit/app_cubit.dart';
import '../../../domain/entitys/city_data.dart';
import 'select_country_states.dart';

class SelectCountryCubit extends Cubit<SelectCountryStates> {
  SelectCountryCubit() : super(SelectCountryInitialState());
  static SelectCountryCubit get(context) => BlocProvider.of(context);
  final List<CityData> allCities = [
    CityData(
        name: 'Cairo', country: 'Egypt', latitude: 30.0444, longitude: 31.2357),
    CityData(
        name: 'Amman',
        country: 'Jordan',
        latitude: 31.9539,
        longitude: 35.9106),
    CityData(
        name: 'Kuwait City',
        country: 'Kuwait',
        latitude: 29.3759,
        longitude: 47.9774),
    CityData(
        name: 'Dubai', country: 'UAE', latitude: 25.2048, longitude: 55.2708),
    CityData(
        name: 'Riyadh',
        country: 'Saudi Arabia',
        latitude: 24.7136,
        longitude: 46.6753),
    CityData(
        name: 'Doha', country: 'Qatar', latitude: 25.2854, longitude: 51.5310),
    CityData(
        name: 'Istanbul',
        country: 'Turkey',
        latitude: 41.0082,
        longitude: 28.9784),
    CityData(
        name: 'Tehran', country: 'Iran', latitude: 35.6892, longitude: 51.3890),
    CityData(
        name: 'Baghdad',
        country: 'Iraq',
        latitude: 33.3152,
        longitude: 44.3661),
    CityData(
        name: 'Beirut',
        country: 'Lebanon',
        latitude: 33.8935,
        longitude: 35.5016),
    CityData(
        name: 'Damascus',
        country: 'Syria',
        latitude: 33.5138,
        longitude: 36.2765),
    CityData(
        name: 'Sanaa', country: 'Yemen', latitude: 15.3694, longitude: 44.1910),
    CityData(
        name: 'Muscat', country: 'Oman', latitude: 23.5880, longitude: 58.3829),
    CityData(
        name: 'Manama',
        country: 'Bahrain',
        latitude: 26.2285,
        longitude: 50.5860),
    CityData(
        name: 'Abu Dhabi',
        country: 'UAE',
        latitude: 24.4539,
        longitude: 54.3773),
  ];

  List<CityData> filteredCities = [];

  /// Filter cities based on search query
  void filterCities(TextEditingController searchController) {
    final query = searchController.text.toLowerCase();
    if (query.isEmpty) {
      filteredCities = [];
    } else {
      filteredCities = allCities.where((city) {
        return city.name.toLowerCase().contains(query) ||
            city.country.toLowerCase().contains(query);
      }).toList();
    }
    emit(SelectCountryFilteredState(filteredCities));
  }

  void selectCity(CityData city) async {
    var context = instanceGetIt.get<AppCubit>();
    context.currentCity = city;
    await Preferences.cacheJsonData(
        key: Preferences.currentCityKey, data: city.toJson());
  }
}
