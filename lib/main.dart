import 'package:flutter/material.dart';
import 'onboarding_first.dart';
import 'onboarding_second.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const OnboardingFirstPage(),
      '/second': (context) => const OnboardingSecondPage(),
    },
  ));
}
