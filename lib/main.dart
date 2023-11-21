import 'package:flutter/material.dart';
import 'package:marvel/config/routes/routes.dart';
import 'package:marvel/config/theme/app_themes.dart';
import 'package:marvel/core/pages/splash_view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marvel App',
      theme: theme(),
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      home: const SplashPage(),
    );
  }
}
