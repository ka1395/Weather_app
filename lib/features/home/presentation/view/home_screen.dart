import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/flow_app_state/state_renderer_impl.dart';
import '../../../../core/resources/get_it.dart';
import '../view_model/cubit/home_cubit.dart';
import '../view_model/cubit/home_states.dart';
import 'home_body_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: instanceGetIt.get<HomeCubit>()..getHomeData(),
      child: Scaffold(
        body: BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            return state.getScreenWidget(
              context: context,
              contentScreenWidget: RefreshIndicator(
                onRefresh: () async {
                  await context.read<HomeCubit>().getHomeData();
                },
                child: HomeBodyWidget(),
              ),
              retryActionFunction: () async {
                await context.read<HomeCubit>().getHomeData();
              },
            );
          },
        ),
      ),
    );
  }
}
