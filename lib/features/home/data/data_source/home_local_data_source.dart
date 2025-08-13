import '../../../../core/network/objectbox_service.dart';
import '../../domain/entitys/home_entitiy.dart';
import '../models/local_model/home_cashed_entity.dart';

abstract class HomeLocalDataSource {
  HomeEntity getCachedHomeData();
  Future<void> cacheHomeData(HomeCashedDataEntity homeCashedDataEntity);
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  HomeEntity getCachedHomeData() {
    try {
      // Get all cached weather data
      final cachedData = ObjectBoxService.getAll<HomeCashedDataEntity>();

      // Return the first cached data or empty entity if no data exists
      if (cachedData.isNotEmpty) {
        var homeEntity = cachedData.first.toHomeEntity();
        return homeEntity; // Return first cached data
      } else {
        return HomeEntity.getEmptyHomeEntity(); // Return empty entity
      }
    } catch (e) {
      // Return empty entity if any error occurs
      return HomeEntity.getEmptyHomeEntity();
    }
  }

  @override
  Future<void> cacheHomeData(HomeCashedDataEntity homeCashedDataEntity) async {
    try {
      // Clear existing data first
      await ObjectBoxService.deleteAll<HomeCashedDataEntity>();

      // Add new home data to cache
      await ObjectBoxService.add(homeCashedDataEntity);
    } catch (e) {
      // Handle any errors silently
    }
  }
}
