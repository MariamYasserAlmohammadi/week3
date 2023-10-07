import 'package:flutter/material.dart';
import 'package:week3/IslamiApp_AhmedNabil/modal/details_screen_args.dart';
import 'package:week3/IslamiApp_AhmedNabil/ui-1/home-1/details_screen/details_screen.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_assets.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_colors.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/app_theme.dart';
import 'package:week3/IslamiApp_AhmedNabil/utils/constants.dart';

class QuranTab1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
          Expanded(
              flex: 1,
              child: Image.asset(AppAssets.quranTabLogo)),
          // Container(
          //   //width:double.infinity,
          //   color: AppColors.primary,
          //   height: 3,
          // ),
               Divider(
                 thickness: 3,
                 color: AppColors.primary,
               ),
          Text("Sura name",style:Theme.of(context).textTheme.displayMedium ,
            textAlign: TextAlign.center,),
          Divider(
            thickness: 3,
color: AppColors.primary,
          ),
               Expanded(
                 flex: 3,
                   child:
                   ListView.builder(
                       itemCount: Constants.suraNames.length,
                       itemBuilder: (context,index)=>
                   TextButton(
                     onPressed: (){
                       Navigator.pushNamed(context, DetailsScreen1.routeName,arguments: DetailsScreenArgs(
                           suraOrHadethName: Constants.suraNames[index],
                           fileName: "${index+1}.txt",
                           isQuranFile: true));
                     },
                     child: Text(Constants.suraNames[index],
                       style:
                       AppTheme.quranTabTitleTextStyle.copyWith(fontWeight: FontWeight.normal),),
                   )),),
        ],
      ),);
  }
}
