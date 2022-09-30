import 'package:flutter/foundation.dart';
import 'package:flutter_portfolio/app/app.locator.dart';
import 'package:flutter_portfolio/data/datasources/remote/http/http_service.dart';
import 'package:flutter_portfolio/data/models/recaptcha/recaptcha_response.dart';
import 'package:g_recaptcha_v3/g_recaptcha_v3.dart';

/// A Service Layer that handles `Google reCAPTCHA V3` API operations.
class RecaptchaService {
  final _httpService = locator<HttpService>();

  /// Holds the response token.
  String _token = '';

  /// Loads the `Google reCAPTCHA V3` API.
  Future<void> initiate() async {
    String siteKey = const String.fromEnvironment('SITE_KEY');
    await GRecaptchaV3.ready(siteKey);
  }

  /// Checks whether the form submission is done by a human or bot.
  Future<bool> isNotABot() async {
    var verificationResponse = await _getVerificationResponse();
    double score = verificationResponse?.score ?? 0.0;
    return score >= 0.5 && score < 1 ? true : false;
  }

  /// Verifies the client's response using HTTP POST method.
  ///
  /// For more information, read the `Google reCAPTCHA V3` [server side docs](https://developers.google.com/recaptcha/docs/verify#api_request)
  Future<RecaptchaResponse?> _getVerificationResponse() async {
    _token = await GRecaptchaV3.execute('submit') ?? '';

    RecaptchaResponse? recaptchaResponse;

    if (_token.isNotEmpty) {
      try {
        /// Holds the body parameter for the HTTP request.
        final bodyParameters = {
          'secret': const String.fromEnvironment('SECRET_KEY'),
          'response': _token,
        };

        var response = await _httpService.postHttp(
          'https://www.google.com/recaptcha/api/siteverify',
          body: bodyParameters,
          headers: {'Access-Control-Allow-Origin': '*'},
        );

        recaptchaResponse = RecaptchaResponse.fromJson(response.body);
      } catch (e) {
        debugPrint(e.toString());
      }
    }
    return recaptchaResponse;
  }
}
