import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  final String nameOfCommandType;
  final Widget pageNameToList;

  DashboardButton({this.nameOfCommandType, this.pageNameToList});

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

    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pageNameToList));
      },
      child: Card(
        elevation: 5.0,
        child: Container(
          width: tenPercentOfScreenWidth,
          height: twentyPercentOfScreenHeight,
          child: Column(
            children: [
              Container(
                height: tenPercentOfScreenHeight,
                child: Center(child: Text(nameOfCommandType)),
              ),
              Container(
                height: tenPercentOfScreenHeight,
                width: double.infinity,
                color: Colors.green,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
