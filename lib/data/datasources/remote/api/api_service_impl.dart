import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/datasources/remote/api/api_endpoints.dart';
import 'package:flutter_portfolio/data/datasources/remote/http/http_service.dart';
import 'package:flutter_portfolio/data/models/email/email.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'api_service.dart';

class ApiServiceImpl implements ApiService {
  final _httpService = locator<HttpService>();
  final _secureStorage = const FlutterSecureStorage();

  @override
  Future<dynamic> sendEmail(Email email) async {
    var response = await _httpService.postHttp(
      ApiEndpoints.contact.path,
      body: email.toJson(),
    );
    print("Response: $response");
  }

  @override
  Future<dynamic> downloadResume() async {
    var response = await _httpService.getHttp(
      ApiEndpoints.resume.path,
    );
    print("Response: $response");
    return response;
  }
}
