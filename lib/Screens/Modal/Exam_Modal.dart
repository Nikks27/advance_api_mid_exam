import 'package:flutter/material.dart';


class JokesModal
{
  late String type,setup,punchline;
  late int id;

  JokesModal(this.type, this.setup, this.punchline, this.id);

  factory JokesModal.fromJson(Map m1)
  {
    return JokesModal(m1['type'] ?? '', m1['setup'] ?? '', m1['punchline'] ?? '', m1['id'] ?? 0);
  }
}
