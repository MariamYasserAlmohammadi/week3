import 'package:flutter/material.dart';
import 'package:week3/IslamiApp/ui/chapter_Details/ChapterDetailsScreen.dart';
import 'package:week3/IslamiApp/ui/hadethDetails/HadethDetailsScreen.dart';

import 'Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
Hadeth hadeth;
  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
Navigator.of(context).pushNamed(HadethDetailsScreen.routeNmae,arguments:hadeth );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(4),
        child: Text(hadeth.title ,
          style: TextStyle(
          fontSize: 25,
fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
