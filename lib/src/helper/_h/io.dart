import 'package:universal_html/html.dart' as html;

class IOHelper {
  static isStandalone() {
    return html.window.matchMedia('(display-mode: standalone)').matches;
  }

  static isMobile() {
    return ['iPhone', 'iPad', 'iPod'].any(
      (word) => html.window.navigator.userAgent.contains(word),
    );
  }
}
