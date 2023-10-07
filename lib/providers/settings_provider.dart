import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLocale ='en';
  ThemeMode currentMode =ThemeMode.light;

  bool isDarkMode ()=> currentMode==ThemeMode.dark;

  void setCurrentLocale(String newLocale) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    currentLocale = newLocale;
    prefs.setString('locale', newLocale);

    notifyListeners();
  }
  void setCurrentMode(ThemeMode newMode) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    currentMode= newMode;
    prefs.setString("mode",newMode== ThemeMode.light ? 'light' : 'dark');
    notifyListeners();
  }
}