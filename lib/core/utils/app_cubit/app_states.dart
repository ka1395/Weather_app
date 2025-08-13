abstract class AppStates {}

class AppInitialState extends AppStates {}


// Location Permission States
class AppPermissionLoadingState extends AppStates {}

class AppPermissionGrantedState extends AppStates {}

class AppPermissionDeniedState extends AppStates {}

class NetworkStatusChangedState extends AppStates {
  final bool isConnected;

  NetworkStatusChangedState(this.isConnected);
}