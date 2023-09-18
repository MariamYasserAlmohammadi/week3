import 'package:flutter/material.dart';
import 'package:week3/IslamiApp/ui/chapter_Details/ChapterDetailsScreen.dart';

class VerseWidget extends StatelessWidget {
  String content;
  int index;
  VerseWidget(this.content,this.index);

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(4),
      child: Text("$content {${index+1}} " ,
        textDirection: TextDirection.rtl,

        style: TextStyle(
        fontSize: 20,
fontWeight: FontWeight.bold
      ),),
    );
  }
}
