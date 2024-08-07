


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/View/splashscreen.dart';

void main() {
  runApp(
      MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (context) => ApiHelper(),),
        // ChangeNotifierProvider(create: (context) => qouteprovider(),),
      ],
      builder :  (context, child) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SplashScreen(),
      },
    );
  }
}

