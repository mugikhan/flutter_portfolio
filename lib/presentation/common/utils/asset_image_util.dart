import 'package:flutter/foundation.dart';

String webAssetImage(String str) {
  return (kIsWeb) ? 'assets/$str' : str;
}
