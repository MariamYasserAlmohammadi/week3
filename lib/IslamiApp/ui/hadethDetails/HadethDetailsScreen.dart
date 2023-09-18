import 'package:flutter/material.dart';
import 'package:week3/IslamiApp/ui/home/hadeth/Hadeth.dart';

class  HadethDetailsScreen extends StatelessWidget {
static const String routeNmae ="hadeth_details_screen";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_background.png"),
          )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body:
          // Center(child: CircularProgressIndicator())
        Column(
          children: [
            Expanded(
              child: Card(

                margin: EdgeInsets.symmetric(vertical: 48,horizontal: 16),
                child: SingleChildScrollView(
                  child: Text(args.content,
               textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
