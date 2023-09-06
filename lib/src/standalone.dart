import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

typedef StandaloneWidgetBuilder = Widget Function(
  BuildContext context,
  bool isInstalled,
  bool isMobile,
);

class StandaloneBuilder extends StatelessWidget {
  final StandaloneWidgetBuilder builder;

  const StandaloneBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      html.window.matchMedia('(display-mode: standalone)').matches,
      ['iPhone', 'iPad', 'iPod'].any(
        (word) => html.window.navigator.userAgent.contains(word),
      ),
    );
  }
}
