import 'package:flutter/material.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-2/home-2/tabs/HomeScreen2.dart';

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
        HomeScreen2.routeName :(buildcontext)=>HomeScreen2(),
      },
      initialRoute: HomeScreen2.routeName,
    );
  }
}
