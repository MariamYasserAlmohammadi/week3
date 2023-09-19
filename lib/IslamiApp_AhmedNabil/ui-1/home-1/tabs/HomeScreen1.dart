import 'package:flutter/material.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/ahadeth_tab/AhadethTab1.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/quran_tab/QuranTab1.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/radio_tab/RadioTab1.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/sebha_tab/SebhaTab1.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_assets.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_colors.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_theme.dart';

class HomeScreen1 extends StatefulWidget {
static const String routeName ="home";

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
int currentTabIndex=0;
List<Widget> tabs=[
  QuranTab1(),
  AhadethTab1(),
  SebhaTab1(),
  RadioTab1(),
];
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
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.transparent,
          title: Text('Islami',style: AppTheme.appBarTitleTextStyle,),
        ),
        backgroundColor: AppColors.transparent,
        bottomNavigationBar: buildBottomNavigationBar(),
        body:tabs[currentTabIndex] ,
      ),
    );
  }

  Widget buildBottomNavigationBar() => Theme(
    data: ThemeData(canvasColor: AppColors.primary),
    child: BottomNavigationBar(
      currentIndex:currentTabIndex ,
      onTap: (index){
        currentTabIndex =index;
        setState(() {

        });
      },
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
