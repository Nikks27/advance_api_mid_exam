
import 'dart:ui'as ui;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Modal/Exam_Modal.dart';
import '../Provider/Exam_Provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    JokesProvider jokesProviderFalse =
    Provider.of<JokesProvider>(context, listen: false);
    JokesProvider jokesProviderTrue =
    Provider.of<JokesProvider>(context, listen: true);
    return Scaffold(
      body: FutureBuilder(
        future: Provider.of<JokesProvider>(context, listen: false).fromMap(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            JokesModal? joke = snapshot.data;
            return Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,

                ),
                RepaintBoundary(
                
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                onTap: () {
                                  jokesProviderFalse.referesh();
                                },
                                child: Icon(
                                  Icons.refresh,
                                  color: Colors.black,
                                  size: 35,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 250,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            '${joke!.setup}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Punchline : ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  TextSpan(
                                    text: '${joke.punchline}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    jokesProviderFalse.addToFavourite(
                                        joke.setup,
                                        joke.punchline,
                                        joke.id.toString());
                                    Navigator.of(context).pushNamed('/fav');
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.black,
                                    size: 30,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

bool fav = false;



































