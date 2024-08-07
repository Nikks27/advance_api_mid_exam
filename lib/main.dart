
import 'package:advance_api_mid_exam/Screens/View/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Provider/Exam_Provider.dart';
import 'Screens/View/LikedJoke..dart';
import 'Screens/View/splashscreen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JokesProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' :  (context)=> SplashScreen(),
          '/home' :  (context)=> HomePage(),
          '/fav' :  (context)=> Likedjoke(),
        },
      ),
    );
  }
}

