import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entitys/home_entitiy.dart';

abstract class HomeRepo {
  Future<Either<Failure, HomeEntity>> getHomeData({
    required RequestHomeEntity requestHomeEntity,
  });
}
