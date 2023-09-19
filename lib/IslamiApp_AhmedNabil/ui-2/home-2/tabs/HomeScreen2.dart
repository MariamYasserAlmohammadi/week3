import 'package:flutter/material.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_asssets.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_colors.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_theme.dart';

class HomeScreen2 extends StatelessWidget {
static const String routeName ="home";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
        DecorationImage
          (image: AssetImage(AppAssets.background),fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.transparent,
          title: Text('Islami',style: AppTheme.appBarTitleTextStyle,),
        ),
        backgroundColor: AppColors.transparent,
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }
  Widget buildBottomNavigationBar() => Theme(
    data: ThemeData(canvasColor: AppColors.primary),
    child: BottomNavigationBar(
      selectedItemColor: AppColors.accent,
        iconSize: 32,
        backgroundColor: AppColors.primary,
        items: const[

          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icQuran)),label: "Quran"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icHAhadeth)),label: "Ahadeth"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icSebha)),label: "Sebha"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icRadio)),label: "Radio"),
        ]),
  );
}
