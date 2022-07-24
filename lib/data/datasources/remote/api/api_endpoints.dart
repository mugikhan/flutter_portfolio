enum ApiEndpoints { login, articles }

extension ApiEndpointExtension on ApiEndpoints {
  String get path {
    switch (this) {
      case ApiEndpoints.login:
        return "http://127.0.0.1:8080/auth/login";
      case ApiEndpoints.articles:
        return "http://127.0.0.1:8080/articles";
    }
  }
}
