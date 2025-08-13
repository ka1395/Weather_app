import '../../../../../core/utils/flow_app_state/state_renderer.dart';
import '../../../../../core/utils/flow_app_state/state_renderer_impl.dart';
import '../../../domain/entitys/home_entitiy.dart';

abstract class HomeStates extends FlowState {}

class HomeInitialState extends ContentState implements HomeStates {}

class HomeGetDataSuccessState extends ContentState implements HomeStates {
  final HomeEntity homeEntity;

  HomeGetDataSuccessState(this.homeEntity);
}

class HomeGetDataLoadingState extends LoadingState implements HomeStates {
  HomeGetDataLoadingState({
    super.stateRendererType = StateRendererType.fullScreenLoadingState,
    required super.message,
  });
}

class HomeGetDataErrorState extends ErrorState implements HomeStates {
  final String messageError;

  HomeGetDataErrorState(this.messageError)
      : super(
          stateRendererType: StateRendererType.fullScreenErrorState,
          message: messageError,
        );
}
