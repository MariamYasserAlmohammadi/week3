import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../modal/details_screen_args.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_theme.dart';

class DetailsScreen1 extends StatefulWidget {
  static const String routeName = "details_screen";

  @override
  State<DetailsScreen1> createState() => _DetailsScreen1State();
}

class _DetailsScreen1State extends State<DetailsScreen1> {
  late DetailsScreenArgs arguments;
  String fileContentDisplay = "";

  @override
  Widget build(BuildContext context) {
    arguments = ModalRoute.of(context)?.settings.arguments as DetailsScreenArgs;

    if (fileContentDisplay.isEmpty) loadFile();

    print("fileName : ${arguments.fileName}");
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.background), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.transparent,
          title: Text(
            arguments.suraOrHadethName,
            style: AppTheme.appBarTitleTextStyle,
          ),
        ),
        backgroundColor: AppColors.transparent,
        body: fileContentDisplay.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Text(
                    fileContentDisplay,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, color: AppColors.accent),
                  ),
                ),
              ),
      ),
    );
  }

  //   // Future <String> fileContent = rootBundle.loadString("assets/files/quran/${arguments.fileName}");
  //   // fileContent.then((fileContent){print(fileContent);});

  void loadFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/${arguments.fileName}');
    fileContentDisplay = fileContent;

    List<String> fileLines = fileContent.split('\n');
    for (int i = 0; i < fileLines.length; i++) {
      fileLines[i] += arguments.isQuranFile ? "(${i + 1})" : " ";
    }
    fileContentDisplay = fileLines.join();
    // print(fileContent);
    setState(() {});
  }
}
