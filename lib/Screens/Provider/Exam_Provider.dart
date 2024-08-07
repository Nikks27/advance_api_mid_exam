import 'package:advance_api_mid_exam/Screens/Modal/Exam_Modal.dart';
import 'package:advance_api_mid_exam/Screens/Modal/Exam_Modal.dart';
import 'package:advance_api_mid_exam/Screens/Modal/Exam_Modal.dart';
import 'package:flutter/material.dart';

import '../Modal/Exam_Modal.dart';

class ApiProvider extends ChangeNotifier{


  // Apihelper  apihelper = Apihelper();
  //
  // late RandomJokes? RandomJokes;
  //
  // Future<RandomJokes?> jsonparsing( String change) async {
  //   final data = await apihelper.Fatching();
  //   RandomJokes rendomModel =RandomJokes.fromjson(data);
  //   print(data);
  //   return rendomModel;

  }
  // ApiProvider(){
  //   jsonparsing();
  // }

  late String chnage='-';
  void refresh(String value)
  {
    chnage=value;
    // notifyListeners();
  }

