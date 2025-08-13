import 'package:dartz/dartz.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/features/home/domain/entitys/home_entitiy.dart';

import '../../../../core/error/error_handler.dart';
import '../../domain/repo/home_repo.dart';
import '../data_source/home_remote_data_source.dart';

class HomeRepoImpl extends HomeRepo {
  HomeRepoImpl({required this.homeRemoteDataSourceImpl});
  final HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;

  @override
  Future<Either<Failure, HomeEntity>> getHomeData(
      {required RequestHomeEntity requestHomeEntity}) async {
    try {
      var result = await homeRemoteDataSourceImpl.getHomeData(
        requestHomeEntity: requestHomeEntity,
      );
      return right(result);
    } catch (error) {
      return left(ErrorHandler.handle((error)).failure);
    }
  }
}
