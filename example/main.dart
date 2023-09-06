import 'package:flutter/material.dart';
import 'package:standalone/standalone.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StandaloneBuilder(
      builder: (context, isStandalone, isMobile) {
        return (isStandalone && isMobile) ? const SizedBox() : const SizedBox();
      },
    );
  }
}
