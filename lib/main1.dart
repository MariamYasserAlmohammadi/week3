import 'package:flutter/material.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/details_screen/details_screen.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/HomeScreen1.dart';

void main(){
  runApp(IslamiApp());
}
class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

      ),
      routes: {
        HomeScreen1.routeName :(buildcontext)=>HomeScreen1(),
        DetailsScreen1.routeName :(buildcontext)=>DetailsScreen1(),
      },
      initialRoute: HomeScreen1.routeName,
    );
  }
}
