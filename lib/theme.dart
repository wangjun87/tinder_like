import 'package:flutter/material.dart';
import 'package:tinder_like/utils/colors.dart';
import 'package:tinder_like/utils/utils.dart';

ThemeData buildThemeData() {
  final baseTheme = ThemeData(fontFamily: AvailableFonts.primaryFont);

  return baseTheme.copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: scaffoldColor,
    appBarTheme: AppBarTheme(color: appBarColor)
  );
}