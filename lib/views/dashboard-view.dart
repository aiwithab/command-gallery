import 'package:aiwithab/components/dashboard-button-component.dart';
import 'package:aiwithab/components/menu-component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double tenPercentOfScreenHeight = MediaQuery.of(context).size.height * 0.1;
    double twentyPercentOfScreenHeight =
        MediaQuery.of(context).size.height * 0.2;
    double twentyFivePercentOfScreenHeight =
        MediaQuery.of(context).size.height * 0.25;
    double thirtyPercentOfScreenHeight =
        MediaQuery.of(context).size.height * 0.3;
    double tenPercentOfScreenWidth = MediaQuery.of(context).size.width * 0.1;
    double twentyPercentOfScreenWidth = MediaQuery.of(context).size.width * 0.2;
    double twentyFivePercentOfScreenWidth =
        MediaQuery.of(context).size.width * 0.25;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Row(
        children: [
          Container(child: Menu()),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Select type of command you are looking for !',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: thirtyPercentOfScreenHeight,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      SizedBox(width: tenPercentOfScreenWidth/2,),
                      DashboardButton(nameOfCommandType: 'Navigation',pageNameToList: Dashboard(),),
                      SizedBox(width: tenPercentOfScreenWidth/2,),
                      DashboardButton(nameOfCommandType: 'File Handling',pageNameToList: Dashboard()),
                      SizedBox(width: tenPercentOfScreenWidth/2),
                      DashboardButton(nameOfCommandType: 'Package Management',pageNameToList: Dashboard()),
                      SizedBox(width: tenPercentOfScreenWidth/2),
                      DashboardButton(nameOfCommandType: 'System Administrator',pageNameToList: Dashboard()),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
