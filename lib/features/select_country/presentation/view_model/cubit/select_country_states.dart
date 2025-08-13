import '../../../domain/entitys/city_data.dart';

abstract class SelectCountryStates {}

class SelectCountryInitialState extends SelectCountryStates {}

class SelectCountryFilteredState extends SelectCountryStates {
  final List<CityData> filteredCities;
  SelectCountryFilteredState(this.filteredCities);
}
