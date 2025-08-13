import 'package:get_it/get_it.dart';

import '../../features/home/data/data_source/home_remote_data_source.dart';
import '../../features/home/data/repo/register_repo_impl.dart';
import '../../features/home/domain/use_case/get_home_data_use_case.dart';
import '../../features/home/presentation/view_model/cubit/home_cubit.dart';
import '../utils/app_cubit/app_cubit.dart';

final instanceGetIt = GetIt.instance;

// Future<void> initAppModule() async {
//   // app module, its a module where we put all generic dependencies

//   // shared prefs instance
//   final sharedPrefs = await SharedPreferences.getInstance();

//   instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

//   instance
//       .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));
//   // network info
//   instance.registerLazySingleton<NetworkInfo>(
//       () => NetworkInfoImpl(InternetConnectionChecker()));

//   // dio factory
//   instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));

//   Dio dio = await instance<DioFactory>().getDio();
//   //app service client
//   instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

//   // remote data source
//   instance.registerLazySingleton<RemoteDataSource>(
//       () => RemoteDataSourceImpl(instance<AppServiceClient>()));

//   // repository

//   instance.registerLazySingleton<Repository>(
//       () => RepositoryImpl(instance(), instance()));
// }

initAppCubitModule() {
  if (!GetIt.I.isRegistered<AppCubit>()) {
    instanceGetIt.registerLazySingleton<AppCubit>(() => AppCubit());
  }
}

//=============================================================
//=============================login===========================
//=============================================================

initHomeCleanArchDependencies() {
  if (!GetIt.I.isRegistered<HomeRemoteDataSourceImpl>()) {
    instanceGetIt.registerLazySingleton<HomeRemoteDataSourceImpl>(
      () => HomeRemoteDataSourceImpl(),
    );
  }

  if (!GetIt.I.isRegistered<HomeRepoImpl>()) {
    instanceGetIt.registerLazySingleton<HomeRepoImpl>(
      () => HomeRepoImpl(
        homeRemoteDataSourceImpl: instanceGetIt.get<HomeRemoteDataSourceImpl>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<GetHomeDataUseCase>()) {
    instanceGetIt.registerLazySingleton<GetHomeDataUseCase>(
      () => GetHomeDataUseCase(
        instanceGetIt.get<HomeRepoImpl>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<HomeCubit>()) {
    instanceGetIt.registerLazySingleton<HomeCubit>(
      () => HomeCubit(instanceGetIt.get<GetHomeDataUseCase>()),
    );
  }
}

// deleteLoginCleanArchDependencies() {
//   if (GetIt.I.isRegistered<LoginRemoteDataSource>()) {
//     instanceGetIt.unregister<LoginRemoteDataSource>();
//   }

//   if (GetIt.I.isRegistered<LoginRepoImpl>()) {
//     instanceGetIt.unregister<LoginRepoImpl>();
//   }

//   if (GetIt.I.isRegistered<LoginUseCase>()) {
//     instanceGetIt.unregister<LoginUseCase>();
//   }
// }
