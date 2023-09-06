import 'dart:html';

class WebHelper {
  static isStandalone() {
    return window.matchMedia('(display-mode: standalone)').matches;
  }

  static isMobile() {
    return ['iPhone', 'iPad', 'iPod'].any(
      (word) => window.navigator.userAgent.contains(word),
    );
  }
}
