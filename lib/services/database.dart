import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<void> addQuizData(Map quizData, String quizId) async {
    try {
      FirebaseFirestore _firestoreStore = FirebaseFirestore.instance;
      await _firestoreStore.collection('quiz').doc(quizId).set(quizData);
    } catch (e) {
      throw e;
    }
  }
}