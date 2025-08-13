import 'package:weather_app/features/home/data/models/weather_data_model/weather_data_model.dart';
import '../../../../core/constant.dart';
import '../../../../core/network/fake_weather_response.dart';
import '../../../../core/network/http.dart';
import '../../domain/entitys/home_entitiy.dart';
import 'dart:io';
import 'home_local_data_source.dart';

abstract class HomeRemoteDataSource {
  Future<HomeEntity> getHomeData({
    required RequestHomeEntity requestHomeEntity,
  });
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final HomeLocalDataSource localDataSource = HomeLocalDataSourceImpl();

  @override
  Future<HomeEntity> getHomeData({
    required RequestHomeEntity requestHomeEntity,
  }) async {
    // var response = await HttpHelper.get(
    //   url: EndPoint.weather,
    //   query: {
    //     "latitude": latitude,
    //     "longitude": longitude,
    //   },
    // );
    await simulateNetworkLatency();
    if(await HttpHelper.networkInfo.isConnected){
          var response = FakeWeatherResponseHandler().fakeWeatherSuccessResponse;

    if (response[Constant.status]) {
      HomeEntity responseEntity =
          WeatherDataModel.fromJson(response[Constant.data]);

      // Cache the data after getting it from API
      await localDataSource
          .cacheHomeData(responseEntity.toHomeCashedDataEntity());

      return responseEntity;
    } else {
      // var cachedData = localDataSource.getCachedHomeData();
      // return cachedData;

      throw HttpException(
        "${response[Constant.error][Constant.code]}/${response[Constant.error][Constant.reason]}",
      );}
    }else{
      var cachedData = localDataSource.getCachedHomeData();
      if(cachedData.countryName.isNotEmpty){
        return cachedData;
      }else{
        throw HttpException(
        "-6/No internet connection",
      );
      }
    }
  }

  /// Simulate network latency (1-2 seconds)
  Future<void> simulateNetworkLatency() async {
    // Random delay between 1-2 seconds to mimic real network conditions
    final random = DateTime.now().millisecond;
    final delay = 1000 + (random % 1000); // 1000-2000ms
    await Future.delayed(Duration(milliseconds: delay));
  }
}
