import 'package:firebase_auth/firebase_auth.dart';
import 'package:quizley/models/user.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  Users userFromFirebaseUser(User user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  Future signInEmailAndPass(String email, String password) async {
    try {
      UserCredential authResult = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = authResult.user;
      return userFromFirebaseUser(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential authResult = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = authResult.user;
      return userFromFirebaseUser(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
    Future signOut() async {
      try {
        return await auth.signOut();
      } catch (e) {
        print(e.toString());
        return null;
      }
    }
  }
}
