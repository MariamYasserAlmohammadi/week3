import 'package:flutter/material.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_colors.dart';

abstract class AppTheme{
  static const appBarTitleTextStyle =
  TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
  color:AppColors.accent );

  static const quranTabTitleTextStyle =
  TextStyle(fontSize: 25,fontWeight: FontWeight.w500,
      color:AppColors.accent );

  static const TextStyle settingsTabTitle =
  TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: AppColors.accent);

  static const TextStyle settingsOptionTitle =
      TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: AppColors.accent);

  static ThemeData lightTheme =ThemeData(
    scaffoldBackgroundColor: AppColors.transparent,
    primaryColor: AppColors.primary,
    dividerTheme: DividerThemeData(
      thickness: 3,
      color: AppColors.primary,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.transparent,
      elevation: 0,
      titleTextStyle: appBarTitleTextStyle,

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.accent,
      selectedIconTheme: IconThemeData(size: 32,),
      unselectedIconTheme: IconThemeData(size: 26),
    ),
    textTheme: TextTheme(
      bodySmall: settingsOptionTitle,
      bodyMedium: settingsTabTitle,
      displayMedium: quranTabTitleTextStyle,

    )
  );
  static ThemeData darkTheme =ThemeData(
  scaffoldBackgroundColor: AppColors.transparent,
  primaryColor: AppColors.primaryDark,
  dividerTheme: DividerThemeData(
  thickness: 3,
  color: AppColors.accentDark,
  ),
  appBarTheme: AppBarTheme(
  centerTitle: true,
  backgroundColor: AppColors.transparent,
  elevation: 0,
  titleTextStyle: appBarTitleTextStyle.copyWith(color: Colors.white),

  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  selectedItemColor: AppColors.accentDark,
  selectedIconTheme: IconThemeData(size: 32,),
  unselectedIconTheme: IconThemeData(size: 26),
  ),
  textTheme: TextTheme(
  bodySmall: settingsOptionTitle.copyWith(color: Colors.white),
  bodyMedium: settingsTabTitle.copyWith(color: Colors.white),
  displayMedium: quranTabTitleTextStyle.copyWith(color: Colors.white),
  ),
  );
}