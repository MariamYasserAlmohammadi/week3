import 'package:flutter/material.dart';
import 'package:week3/IslamiApp/ui/chapter_Details/ChapterDetailsScreen.dart';
import 'package:week3/IslamiApp/ui/hadethDetails/HadethDetailsScreen.dart';
import 'package:week3/IslamiApp/ui/home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          cardTheme: CardTheme(
              color: Colors.white,
              elevation: 18,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              )),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(
              size: 32,
            ),
          ),
          scaffoldBackgroundColor: Colors.transparent,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFB7935F),
            primary: Color(0xFFB7935F),
            secondary: Color(0x87B7935F),
            onPrimary: Colors.white,
            onSecondary: Colors.black,
          ),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
          )),
      routes: {
        HomeScreen.routeName: (buildcontext) => HomeScreen(),
        ChapterDetailsScreen.routeName: (buildcontext) =>
            ChapterDetailsScreen(),
        HadethDetailsScreen.routeNmae: (buildcontext) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
