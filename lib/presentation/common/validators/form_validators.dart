import 'package:string_validator/string_validator.dart';

class FormValidators {
  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a password";
    } else if (value.length < 8) {
      return "Enter a password containing at least 8 characters";
    } else {
      return null;
    }
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    } else if (!isEmail(value)) {
      return "Please enter a valid email address";
    } else {
      return null;
    }
  }

  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    } else {
      return null;
    }
  }

  static String? messageValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a message';
    } else {
      return null;
    }
  }
}
