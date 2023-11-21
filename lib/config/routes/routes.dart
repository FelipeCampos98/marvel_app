import 'package:flutter/material.dart';
import 'package:marvel/core/pages/home_view/home_view.dart';
import 'package:marvel/core/pages/splash_view/splash_view.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(
          const SplashPage(),
        );

      case '/home':
        return _materialRoute(const MyHomePage());

      default:
        return _materialRoute(const Scaffold());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
