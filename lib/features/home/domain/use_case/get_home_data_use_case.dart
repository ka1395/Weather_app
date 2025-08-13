import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../entitys/home_entitiy.dart';
import '../repo/home_repo.dart';

class GetHomeDataUseCase extends UseCase<HomeEntity, RequestHomeEntity> {
  final HomeRepo repo;

  GetHomeDataUseCase(this.repo);

  @override
  Future<Either<Failure, HomeEntity>> call([RequestHomeEntity? param]) async {
    return await repo.getHomeData(
      requestHomeEntity: param!,
    );
  }
}
