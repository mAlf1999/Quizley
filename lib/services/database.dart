import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{


  Future<Void> addQuizData(Map quizData, String quizId) async{
    await Firestore.instance.collection("quiz")
    .document(quizId).setData(quizData)
    .catchError((e){
      print(e.toString());
    });
    }
  }
}