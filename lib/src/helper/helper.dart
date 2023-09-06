import 'package:flutter/foundation.dart';
import 'package:standalone/src/helper/_h/io.dart';
import 'package:standalone/src/helper/_h/web.dart';

class Helper {
  static isStandalone() {
    if (kIsWeb) {
      IOHelper.isStandalone();
    } else {
      WebHelper.isStandalone();
    }
  }

  static isMobile() {
    if (kIsWeb) {
      IOHelper.isMobile();
    } else {
      WebHelper.isMobile();
    }
  }
}
