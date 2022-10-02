import 'package:flutter_portfolio/data/models/email/email.dart';

abstract class ApiService {
  Future<dynamic> sendEmail(Email email);
  Future<dynamic> downloadResume();
}
