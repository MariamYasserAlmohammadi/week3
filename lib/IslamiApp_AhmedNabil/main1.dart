import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/details_screen/details_screen.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/HomeScreen1.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_theme.dart';
import 'package:week3/providers/settings_provider.dart';
void main(){

  runApp(ChangeNotifierProvider(
      create: (_) => SettingsProvider(),
      child: IslamiApp()));
}
class IslamiApp extends StatelessWidget {
  late SettingsProvider provider ;
  late SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    provider =  Provider.of(context);
    initSharedPreference();
    return MaterialApp(

      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("en"),Locale("ar")],
      locale: Locale(provider.currentLocale),
      themeMode: provider.currentMode,
      theme: AppTheme.lightTheme,
      darkTheme : AppTheme.darkTheme,
      routes: {
        HomeScreen1.routeName :(buildcontext)=>HomeScreen1(),
        DetailsScreen1.routeName :(buildcontext)=>DetailsScreen1(),
      },
      initialRoute: HomeScreen1.routeName,
    );
  }

void initSharedPreference() async{
   prefs = await SharedPreferences.getInstance();
   provider.setCurrentLocale(prefs.getString('locale') ?? 'en');
   if(prefs.getString('mode') == 'light'){
     provider.setCurrentMode(ThemeMode.light);
   }else if(prefs.getString('mode') == 'dark'){
     provider.setCurrentMode(ThemeMode.dark);
   }
}
}
