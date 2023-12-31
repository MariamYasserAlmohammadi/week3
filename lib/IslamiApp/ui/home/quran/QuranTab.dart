import 'package:flutter/material.dart';
import 'package:week3/IslamiApp/ui/home/quran/ChapterTitleWidget.dart';

class QuranTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    List<String> names = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
      ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
      ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
      ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
      ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
      ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
      ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
      ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
      ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
      "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/quran_image.png')),
        Expanded(
          flex: 3,
          child: ListView.separated(
              itemBuilder :(context ,index){
            return ChapterTitleWidget(names[index],index);
            },
              separatorBuilder: (context , index)=>
              Container(color: Theme.of(context).primaryColor,
              width: double.infinity,
              height: 2,
              margin: EdgeInsets.symmetric(horizontal: 64),),
              itemCount: names.length),
        )
      ],
    );
  }
}
