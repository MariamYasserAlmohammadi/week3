import 'package:flutter/material.dart';

import '../../../../modal/details_screen_args.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_theme.dart';
import '../../../../utils/constants.dart';
import '../../details_screen/details_screen.dart';

class AhadethTab1 extends StatelessWidget {
  List <String> ahadethNames =List.generate(50, (index) {
    return "${index+1} الحديث رقم ";
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(AppAssets.ahadethTabLogo)),
          // Container(
          //   //width:double.infinity,
          //   color: AppColors.primary,
          //   height: 3,
          // ),
          Divider(
            thickness: 3,
            color: AppColors.primary,
          ),
          Text("Ahadeth",style:AppTheme.quranTabTitleTextStyle ,
            textAlign: TextAlign.center,),
          Divider(
            thickness: 3,
            color: AppColors.primary,
          ),
          Expanded(
            flex: 3,
            child:
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context,index)=>
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, DetailsScreen1.routeName,arguments: DetailsScreenArgs(
                            suraOrHadethName: ahadethNames[index],
                            fileName : 'h${index+1}.txt',
                            isQuranFile: false));
                      },
                      child: Text(ahadethNames[index],
                        style:
                        AppTheme.quranTabTitleTextStyle.copyWith(fontWeight: FontWeight.normal),),
                    )),),
        ],
      ),);;
  }
}
