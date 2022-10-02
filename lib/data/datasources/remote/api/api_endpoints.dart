enum ApiEndpoints { contact, resume }

extension ApiEndpointExtension on ApiEndpoints {
  String get path {
    switch (this) {
      case ApiEndpoints.contact:
        return "https://li26aztkmi.execute-api.af-south-1.amazonaws.com/portfolio/portfolio-contact-form";
      case ApiEndpoints.resume:
        return "https://li26aztkmi.execute-api.af-south-1.amazonaws.com/portfolio/portfolio-resume";
    }
  }
}
