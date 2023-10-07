import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/ahadeth_tab/AhadethTab1.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/quran_tab/QuranTab1.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/radio_tab/RadioTab1.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/sebha_tab/SebhaTab1.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/tabs/settings_tab/settings_tab.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_assets.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_colors.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:week3/providers/settings_provider.dart';
class HomeScreen1 extends StatefulWidget {
static const String routeName ="home";

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
int currentTabIndex=0;
void setCurrentTabIndex(int currentIndex){
  currentTabIndex = currentIndex;
}
List<Widget> tabs=[
  QuranTab1(),
  AhadethTab1(),
  SebhaTab1(),
  RadioTab1(),
  SettingsTab1(),
];
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider =Provider.of(context);
    return Container(
      decoration:  BoxDecoration(
        image:
        DecorationImage
          (image: AssetImage(
          provider.isDarkMode()?
          AppAssets.backgroundDark : AppAssets.background),fit: BoxFit.fill),
      ),
      child: Scaffold(
        //backgroundColor: AppColors.transparent,
        appBar: AppBar(

          title: Text(AppLocalizations.of(context)!.islami,),
        ),

        bottomNavigationBar: buildBottomNavigationBar(),
        body:tabs[currentTabIndex] ,
      ),
    );
  }

  Widget buildBottomNavigationBar() => Theme(
    data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
    child: BottomNavigationBar(
      currentIndex:currentTabIndex ,
      onTap: (index){
        currentTabIndex =index;
        setState(() {

        });
      },
      // selectedItemColor: AppColors.accent,
      //   iconSize: 32,
        // backgroundColor: AppColors.primary,
        items: [
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icQuran)),label: "Quran"),
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icHAhadeth)),label: "Ahadeth"),
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icSebha)),label: "Sebha"),
          const BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.icRadio)),label: "Radio"),
          BottomNavigationBarItem(icon: const Icon(Icons.settings),label: AppLocalizations.of(context)!.settings),
        ]),
  );
}
