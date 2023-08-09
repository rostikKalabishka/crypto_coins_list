import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      titleTextStyle: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
    ),
    useMaterial3: true,
    dividerColor: Colors.white10,
    listTileTheme: const ListTileThemeData(iconColor: Colors.white),
    textTheme: TextTheme(
        bodyMedium: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14)),
    scaffoldBackgroundColor: Colors.grey[900]);
