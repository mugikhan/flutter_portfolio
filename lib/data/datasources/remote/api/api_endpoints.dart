enum ApiEndpoints { contact, resume }

extension ApiEndpointExtension on ApiEndpoints {
  String get path {
    switch (this) {
      case ApiEndpoints.contact:
        return "/portfolio-contact-form";
      case ApiEndpoints.resume:
        return "/portfolio-resume";
    }
  }
}
