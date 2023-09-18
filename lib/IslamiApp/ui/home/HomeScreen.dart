import 'package:flutter/material.dart';
import 'package:week3/IslamiApp/ui/home/hadeth/HadethTap.dart';
import 'package:week3/IslamiApp/ui/home/quran/QuranTab.dart';
import 'package:week3/IslamiApp/ui/home/radio/Radio.dart';
import 'package:week3/IslamiApp/ui/home/tasbeh/Tasbeh.dart';

class HomeScreen extends StatefulWidget {
static const String routeName ="home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedTabIndex =0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_background.png"),
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
     // backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){

            setState(() {
              selectedTabIndex =index;
            });
          },
          currentIndex: selectedTabIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),label:"Radio" ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/tasbeh_icon.png')),label:"Tasbeh" ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/hadeth_icon.png')),label:"Hadeth" ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),label:"Quran" ),
            ]),
       body: tabs[selectedTabIndex],
      ),
    );
  }
  List<Widget> tabs =[
    RadioTab(),
    TasbehTab(),
    HadethTab(),
    QuranTab(),
  ];
}
