import 'package:flutter/material.dart';
import 'package:project5/util/color.dart';

final themeDark = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: blackkShade1,
    elevation: 0,
    centerTitle: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
    ),
  ),
  scaffoldBackgroundColor: bgBlack,
);
