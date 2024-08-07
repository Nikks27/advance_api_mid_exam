import 'dart:async';

import 'package:advance_api_mid_exam/Screens/View/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => Homepage(),),);
    } );
    return Scaffold(
        body:Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/jokes logo.jpg'
                    )
                )
            ),
          ),
        )
    );
  }
}
