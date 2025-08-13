import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources/app_them_data.dart';
import '../../../../core/resources/routs.dart';
import '../../../../core/widgets/text_field_widget.dart';
import '../view_model/cubit/select_country_cubit.dart';
import '../view_model/cubit/select_country_states.dart';
import 'widget/city_card_widget.dart';
import 'widget/curtom_initial_empty_state.dart';
import 'widget/no_result_state.dart';

class SelectCountryBody extends StatefulWidget {
  const SelectCountryBody({
    super.key,
  });

  @override
  State<SelectCountryBody> createState() => _SelectCountryBodyState();
}

class _SelectCountryBodyState extends State<SelectCountryBody> {
  late SelectCountryCubit selectCountryCubit;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectCountryCubit = context.read<SelectCountryCubit>();
    _searchController
        .addListener(() => selectCountryCubit.filterCities(_searchController));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Select City',
      )),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          gradient: AppThemData.backgroundGradient,
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Search Bar
              TextFieldWidget(
                controller: _searchController,
                hintText: 'Search for a city...',
                prefix: Icon(
                  Icons.search,
                  color: AppThemData.assetColorGrey600,
                ),
              ),
              // Cities List or Empty States
              Expanded(
                child: BlocBuilder<SelectCountryCubit, SelectCountryStates>(
                  buildWhen: (previous, current) =>
                      current is SelectCountryFilteredState,
                  builder: (context, state) {
                    final query = _searchController.text.trim();
                    if (query.isEmpty) {
                      return InitialEmptyState();
                    }
                    if (selectCountryCubit.filteredCities.isEmpty) {
                      return NoResultsState();
                    }
                    return ListView.builder(
                      itemCount: (state as SelectCountryFilteredState)
                          .filteredCities
                          .length,
                      itemBuilder: (context, index) {
                        final city = state.filteredCities[index];
                        return CityCardWidget(
                          city: city,
                          onTap: () async {
                            selectCountryCubit.selectCity(city);
                            Navigator.pushReplacementNamed(
                                context, AppRouts.homeScreen);
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
