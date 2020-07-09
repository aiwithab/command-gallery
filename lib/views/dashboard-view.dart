import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.25,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Command Gallery',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
                  Container(
                    width: 200.0,
                      height: 100.0,
                      child: Image.asset('assets/images/cg-logo.png')),
                  InkWell(
                    onTap: ()=>{},
                    splashColor: Colors.green,
                    child: Card(
                      color: Colors.white,
                      elevation: 5.0,
                        child: Container(
                          alignment: Alignment.center,
                          height: 40.0,
                            width: double.infinity,
                            child: Text('Feedback',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
                        )
                    ),
                  ),
                  InkWell(
                    onTap: ()=>{},
                    child: Card(
                        elevation: 5.0,
                        child: Container(
                            alignment: Alignment.center,
                            height: 40.0,
                            width: double.infinity,
                            child: Text('About',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
                        )
                    ),
                  ),
                  InkWell(
                    onTap: ()=>{},
                    child: Card(
                        elevation: 5.0,
                        child: Container(
                            alignment: Alignment.center,
                            height: 40.0,
                            width: double.infinity,
                            child: Text('Contact us',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
                        )
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),

    );
  }
}