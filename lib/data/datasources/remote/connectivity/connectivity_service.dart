import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_portfolio/data/enums/connectivity_status.dart';
import 'package:flutter_portfolio/data/services/stoppable_service.dart';

class ConnectivityService implements StoppableService {
  final _connectivityResultController = StreamController<ConnectivityStatus>();
  final _connectivity = Connectivity();

  late StreamSubscription<ConnectivityResult> _subscription;
  late ConnectivityResult _lastResult;
  bool _serviceStopped = false;

  Stream<ConnectivityStatus> get connectivity$ =>
      _connectivityResultController.stream;

  @override
  bool get serviceStopped => _serviceStopped;

  ConnectivityService() {
    _subscription =
        _connectivity.onConnectivityChanged.listen(_emitConnectivity);
  }

  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();

    switch (result) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
        return true;
      case ConnectivityResult.none:
      default:
        return false;
    }
  }

  @override
  void start() async {
    debugPrint('ConnectivityService resumed');
    _serviceStopped = false;

    await _resumeSignal();
    _subscription.resume();
  }

  @override
  void stop() {
    debugPrint('ConnectivityService paused');
    _serviceStopped = true;

    _subscription.pause(_resumeSignal());
  }

  void _emitConnectivity(ConnectivityResult event) {
    if (event == _lastResult) return;

    debugPrint('Connectivity status changed to $event');
    _connectivityResultController.add(_convertResult(event));
    _lastResult = event;
  }

  ConnectivityStatus _convertResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
        return ConnectivityStatus.cellular;
      case ConnectivityResult.wifi:
        return ConnectivityStatus.wifi;
      case ConnectivityResult.none:
        return ConnectivityStatus.offline;
      default:
        return ConnectivityStatus.offline;
    }
  }

  Future<void> _resumeSignal() async => true;
}
