import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/network/http.dart';
import 'core/network/objectbox_service.dart';
import 'core/network/preferences.dart';
import 'core/resources/get_it.dart';
import 'core/resources/my_block_observer.dart';
import 'core/resources/routs.dart';
import 'core/resources/theme_app.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/utils/app_cubit/app_cubit.dart';
import 'core/utils/app_cubit/app_states.dart';
import 'features/select_country/domain/entitys/city_data.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Preferences.initPref();
  await HttpHelper.init();
  await ObjectBoxService.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  String currentLanguage = 'en';
  String currentPage = AppRouts.locationPermission;
  @override
  void initState() {
    initAppCubitModule();
    initHomeCleanArchDependencies();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    _getCurrentCity();
    super.initState();
  }

  _getCurrentCity() {
    var currentCity = Preferences.getJsonData(key: Preferences.currentCityKey);
    if (currentCity != null) {
      instanceGetIt.get<AppCubit>().currentCity =
          CityData.fromJson(currentCity);
      currentPage = AppRouts.homeScreen;
    } else {
      instanceGetIt
          .get<AppCubit>()
          .checkLocationPermission(afterSettings: true);
      currentPage = AppRouts.locationPermission;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: instanceGetIt.get<AppCubit>(),
      child: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: Locale("en"),
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            initialRoute: currentPage,
            theme: lightTheme(),
            onGenerateRoute: onGenerateRoute,
          );
        },
      ),
    );
  }
}
