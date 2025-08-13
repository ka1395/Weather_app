import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import '../../../features/home/data/models/local_model/home_cashed_entity.dart';
import '../../../features/select_country/domain/entitys/city_data.dart';
import '../../network/http.dart';
import '../../network/objectbox_service.dart';
import '../../network/preferences.dart';
import 'app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState()) {
    _initConnectivityListener();
  }

  bool isConnected = true; // Current status
  void _initConnectivityListener() {
    HttpHelper.networkInfo.getStreamConnectivityResult((result) {
      final hasInternet = result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.wifi);

      if (hasInternet != isConnected) {
        isConnected = hasInternet;
        emit(NetworkStatusChangedState(isConnected));
      }
    });
  }

  late CityData currentCity;

  void resetBlocStates() {
    emit(AppInitialState());
  }

  Future<void> checkLocationPermission({bool afterSettings = false}) async {
    emit(AppPermissionLoadingState());

    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      emit(AppPermissionDeniedState());
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      currentCity = CityData(
        name: "cairo , Egypt",
        country: "Egypt",
        latitude: position.latitude,
        longitude: position.longitude,
      );

      await Preferences.cacheJsonData(
          key: Preferences.currentCityKey, data: currentCity.toJson());

      if (afterSettings) {
        emit(AppPermissionGrantedState());
      } else {
        emit(AppPermissionDeniedState()); // Or handle differently
      }
    } else {
      emit(AppPermissionDeniedState());
    }
  }

  Future<void> clearCache() async {
    await ObjectBoxService.deleteAll<HomeCashedDataEntity>();
    await Preferences.clearSharPreference();
    emit(AppInitialState());
  }
}
