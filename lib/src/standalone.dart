import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'helper/helper.dart';

typedef StandaloneWidgetBuilder = Widget Function(
  BuildContext context,
  bool isStandalone,
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
      kIsWeb && Helper.isStandalone(),
      kIsWeb && Helper.isMobile(),
    );
  }
}
