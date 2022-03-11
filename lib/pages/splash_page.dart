import 'dart:async';

import 'package:flutter/material.dart';
import 'package:real_registration_ui_task/pages/home_page.dart';
import 'package:real_registration_ui_task/pages/sign_in_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const String id = "splash_page";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  var isLogging = false;

  _initTimer(){
    Timer(Duration(seconds: 2), (){
      if(isLogging){
        Navigator.pushReplacementNamed(context, HomePage.id);
      } else{
        Navigator.pushReplacementNamed(context, SignInPage.id);

      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Stack(
          children:<Widget> [
            Center(
              child: Image.asset("assets/images/ic_logo1.png", width: 100, height: 100,),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Center(
                    child: Text("From Amazon", style: TextStyle(fontSize: 20),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
