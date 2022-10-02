import 'package:flutter/foundation.dart';

String webAssetImage(String str) {
  return (kIsWeb && !kDebugMode) ? 'assets/$str' : str;
}
