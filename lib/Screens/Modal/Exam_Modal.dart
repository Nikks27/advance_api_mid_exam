import 'package:flutter/material.dart';


class RandomJokes
{
  String? type;
  String? setup;
  String? punchline;
  int? id;

  RandomJokes({required this.id,required this.type,required this.punchline,required this.setup});

factory RandomJokes.fromjson(Map m1 ){
  return RandomJokes(id: m1['id'], type: m1['type'], punchline: m1['punchline'], setup: m1['setup']);
}

}
