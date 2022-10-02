import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/app/app.logger.dart';
import 'package:flutter_portfolio/core/exceptions/network_exception.dart';
import 'package:stacked_services/stacked_services.dart';

import 'http_service.dart';

/// Helper service that abstracts away common HTTP Requests
class HttpServiceImpl implements HttpService {
  final _snackbarService = locator<SnackbarService>();
  final _log = getLogger('HttpServiceImpl');

  final Dio dio = Dio()
    ..options.baseUrl =
        "https://li26aztkmi.execute-api.af-south-1.amazonaws.com/portfolio"
    ..options.connectTimeout = 60000
    ..options.sendTimeout = 60000
    ..options.receiveTimeout = 60000
    ..options.headers = {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Credentials": true,
      "Access-Control-Allow-Headers": "X-Requested-With,content-type",
      "Access-Control-Allow-Methods": "GET, POST, OPTIONS, PUT, PATCH, DELETE",
      "Accept": "*/*"
    }
    ..options.contentType = "application/json";

  @override
  Future<dynamic> getHttp(String url,
      {Map<String, String>? headers, Map<String, dynamic>? queryParams}) async {
    Response response;

    _log.i('Sending GET to $url');

    try {
      final fullRoute = '$url';
      response = await dio.get(
        fullRoute,
        queryParameters: queryParams,
      );
    } on DioError catch (e) {
      _log.d('HttpService: Failed to GET ${e}');
      String message = handleError(e);
      throw NetworkException(message);
    }

    return response.data;
  }

  @override
  Future<dynamic> postHttp(
    String url, {
    required dynamic body,
    Map<String, String>? headers,
  }) async {
    Response response;

    _log.i('Sending $body to $url');

    try {
      final fullRoute = Uri.encodeFull(url);
      response = await dio.post(
        fullRoute,
        data: body,
        // onSendProgress: network_utils.showLoadingProgress,
        // onReceiveProgress: network_utils.showLoadingProgress,
      );
    } on DioError catch (e) {
      _log.d('HttpService: Failed to POST ${e.toString()}');
      String message = handleError(e);
      throw NetworkException(message);
    }

    return response.data;
  }

  @override
  Future<dynamic> deleteHttp(String url, {Map<String, String>? headers}) async {
    Response response;

    _log.i('Sending DELETE to $url');

    try {
      final fullRoute = Uri.encodeFull('$url');
      response = await dio.delete(
        fullRoute,
      );
    } on DioError catch (e) {
      _log.d('HttpService: Failed to DELETE $e');
      String message = handleError(e);
      throw NetworkException(message);
    }

    // For this specific API its decodes json for us
    return response.data;
  }

  // @override
  // Future<dynamic> postHttpForm(
  //     String processEndpoint,
  //     Map<String, dynamic> body,
  //     List<File> files,
  //     ) async {
  //   int index = 0;

  //   final formData = FormData.fromMap(body);
  //   files?.forEach((file) async {
  //     final mFile = await _fileHelper.convertFileToMultipartFile(file);
  //     formData.files.add(MapEntry('file$index', mFile));
  //     index++;
  //   });

  //   final data = await postHttp(processEndpoint, formData);

  //   return data;
  // }

  // @override
  // Future<dynamic> putHTTP(String url, {FileBox fileBox}) async {
  //   Response response;

  //   try {
  //     response = await dio.put(
  //       url,
  //       data: fileBox.file.openRead(),
  //       options: Options(
  //         headers: {
  //           // "Content-Length": image.lengthSync(),
  //           "Content-MD5": fileBox.hash,
  //         },
  //       ),
  //       onSendProgress: (int sentBytes, int totalBytes) {
  //         double progressPercent = sentBytes / totalBytes * 100;
  //         print("$progressPercent %");
  //       },
  //     );
  //   } catch(e){
  //     _log.d('HttpService: Failed to PUT ${e}');
  //     String message = handleError(e);
  //     throw NetworkException(message);
  //   }

  //   return response.data;
  // }

  // @override
  // Future<File> downloadFile(String fileUrl) async {
  //   Response response;

  //   final file = await _fileHelper.getFileFromUrl(fileUrl);

  //   try {
  //     response = await dio.download(
  //       fileUrl,
  //       file.path,
  //       onReceiveProgress: network_utils.showLoadingProgress,
  //     );
  //   }catch (e) {
  //     _log.severe('HttpService: Failed to download file ${e}');
  //     String message = handleError(e);
  //     throw NetworkException(message);
  //   }

  //   return file;
  // }

  @override
  String handleError(DioError dioError) {
    String errorDescription = "";
    switch (dioError.type) {
      case DioErrorType.cancel:
        errorDescription = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        errorDescription = "Connection timeout with API server";
        break;
      case DioErrorType.other:
        errorDescription =
            "Connection to API server failed due to internet connection";
        break;
      case DioErrorType.receiveTimeout:
        errorDescription = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        errorDescription =
            "Received invalid status code: ${dioError.response?.statusCode}";
        break;
      case DioErrorType.sendTimeout:
        errorDescription = "Send timeout in connection with API server";
        break;
    }
    return errorDescription;
  }

  @override
  void dispose() {
    dio.close(force: true);
  }
}
