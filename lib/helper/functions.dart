import 'package:flutter/cupertino.dart';

class HelperFunction{

  static String UserLoggedInKey = "USERLOGGEDINKEY";

saveUserLoggedInDetails({bool _isLoggedin}) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool(UserLoggedInKey , isLoggedin)
}

getUserLoggedInDetails({bool isLoggrdin}) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.getBool(UserLoggedInKey);
}
}