import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  StreamSubscription<List<ConnectivityResult>> getStreamConnectivityResult(
    void Function(List<ConnectivityResult>)? onDataChanged,
  );
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  Future<bool> get isConnected async {
    final result = await connectivity.checkConnectivity();
    return result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi);
  }

  @override
  StreamSubscription<List<ConnectivityResult>> getStreamConnectivityResult(
    void Function(List<ConnectivityResult> p1)? onDataChanged,
  ) {
    return connectivity.onConnectivityChanged.listen(onDataChanged);
  }
}
