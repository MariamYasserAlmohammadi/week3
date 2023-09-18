import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:week3/IslamiApp/ui/home/hadeth/Hadeth.dart';
import 'package:week3/IslamiApp/ui/home/hadeth/HadethTitleWidget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset("assets/images/hadeth_image.png")),
        Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ))),
            child: Text(
              "Hadeth",
              style: TextStyle(fontSize: 24),
            )),
        Expanded(
          flex: 3,
          child:
          allAhadeth.isEmpty ? Center(child: CircularProgressIndicator(),)
          : ListView.separated(
            separatorBuilder: (context, index) {
              return Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 64),
              );
            },
            itemBuilder: (context, index) {
              return HadethTitleWidget(allAhadeth[index]);
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  List<Hadeth> allAhadeth = [];

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    //parse file

    List<String> hadethList = fileContent.trim().split("#");
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethLines = singleHadeth.trim().split('\n');
      String title = hadethLines[0];
      hadethLines.remove(0);
      String content = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      allAhadeth.add(hadeth);
    }
    setState(() {

    });
  }
}
