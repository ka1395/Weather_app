import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/get_it.dart';
import '../../../../../core/utils/app_cubit/app_cubit.dart';
import '../../../domain/entitys/home_entitiy.dart';
import '../../../domain/use_case/get_home_data_use_case.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit(this.homeUseCase) : super(HomeInitialState());
  static HomeCubit get(context) => BlocProvider.of(context);
  final GetHomeDataUseCase homeUseCase;
  void resetBlocStates() {
    emit(HomeInitialState());
  }

  HomeEntity? homeEntity;

  Future<void> getHomeData() async {
    var appCubit = instanceGetIt.get<AppCubit>();
    var latitude = appCubit.currentCity.latitude;
    var longitude = appCubit.currentCity.longitude;
    emit(HomeGetDataLoadingState(message: ""));
    var result = await homeUseCase
        .call(RequestHomeEntity(latitude: latitude, longitude: longitude));
    result.fold(
      (error) {
        emit(HomeGetDataErrorState(error.message));
      },
      (data) {
        homeEntity = data;
        emit(HomeGetDataSuccessState(data));
      },
    );
  }
}
