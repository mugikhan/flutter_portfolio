import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/datasources/remote/connectivity/connectivity_service.dart';
import 'package:flutter_portfolio/data/models/enums/connectivity_status.dart';

class DioConnectivityRequestRetrier {
  final Dio dio;
  final connectivityService = locator<ConnectivityService>();

  DioConnectivityRequestRetrier({
    required this.dio,
  });

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    StreamSubscription streamSubscription;
    final responseCompleter = Completer<Response>();

    streamSubscription = connectivityService.connectivity$.listen(
      (ConnectivityStatus connectivityStatus) async {
        if (connectivityStatus != ConnectivityStatus.offline) {
          // streamSubscription.cancel();
          // Complete the completer instead of returning
          responseCompleter.complete(
            dio.request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
              options: Options(),
            ),
          );
        }
      },
    );

    return responseCompleter.future;
  }
}
