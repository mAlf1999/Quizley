import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction {
  // ignore: non_constant_identifier_names
  static String UserLoggedInKey = "USERLOGGEDINKEY";

  saveUserLoggedInDetails({bool isLoggedin}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(UserLoggedInKey, isLoggedin);
  }

  getUserLoggedInDetails({bool isLoggrdin}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getBool(UserLoggedInKey);
  }
}
