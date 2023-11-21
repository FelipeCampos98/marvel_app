import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Montserrat',
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Color(0XFF8B8B8B)),
    titleTextStyle: TextStyle(color: Colors.red, fontSize: 18),
  );
}
