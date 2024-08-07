import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Api_Helper/Api_Helper.dart';
import '../Modal/Exam_Modal.dart';

class JokesProvider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();
  JokesModal? jokesModal;
  List<String> jokes = [];

  Future<JokesModal?> fromMap() async {
    final data = await apiHelper.fetchData();
    jokesModal = JokesModal.fromJson(data);
    return jokesModal;
  }

  void referesh(){
    final data = apiHelper.fetchData();
    notifyListeners();
  }

  Future<void> addToFavourite(String joks , String punchline ,String id)
  async {
    String data = '$joks-$punchline-$id';
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    jokes.add(data);
    print(jokes);
    sharedPreferences.setStringList('jokes', jokes);
  }

  Future<void> getFacvouriteData()
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    jokes = sharedPreferences.getStringList('jokes') ?? <String>[];
    notifyListeners();
  }

  JokesProvider()
  {
    getFacvouriteData();
  }

}
