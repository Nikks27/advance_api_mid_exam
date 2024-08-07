import 'dart:async';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
            (){
          Navigator.of(context).pushReplacementNamed('/home');
        }
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 600,
            width: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/spashscreen.webp'
                )
              )
            ),
          ),
        ],
      ),
    );
  }
}