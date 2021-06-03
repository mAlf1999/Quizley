// ignore: avoid_web_libraries_in_flutter

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<void> addQuizData(Map quizData, String quizId) async {
    try {
      FirebaseFirestore _firestoreStore = FirebaseFirestore.instance;
      await _firestoreStore.collection("Quiz").doc(quizId).set(quizData);
    } catch (e) {
      throw e;
    }
  }

  Future<void> addQuestionData(Map questionData, String quizId) async {
    print('questions $questionData');
    print('quiz $quizId');
    await FirebaseFirestore.instance
        .collection("Quiz")
        .doc(quizId)
        .collection("QNA")
        .add(questionData)
        .catchError((e) {
      print(e);
    });
  }

  getQuizData() async {
    return await FirebaseFirestore.instance.collection("Quiz").snapshots();
  }

  getQuestionData(String quizId) async {
    return await FirebaseFirestore.instance
        .collection("Quiz")
        .doc(quizId)
        .collection("QNA")
        .get();
  }
}
