import 'package:flutter/foundation.dart';

String webAssetImage(String str) {
  return str;
  //(kIsWeb && !kDebugMode) ? 'assets/$str' : str; This workaround does not work!!!!
}
