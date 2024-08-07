import 'package:flutter/material.dart';


class Randomjokes
{
  late String type,setup,punchline;
  late int id;

  Randomjokes(this.type, this.setup, this.punchline, this.id);

  factory Randomjokes.fromJson(Map m1)
  {
    return Randomjokes(m1['type'] ?? '', m1['setup'] ?? '', m1['punchline'] ?? '', m1['id'] ?? 0);
  }
}
