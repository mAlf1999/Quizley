import 'package:flutter/material.dart';
import 'package:quizley/views/signin.dart';
import 'package:quizley/views/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  String email, password, name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        key: formKey,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Spacer(),
                TextFormField(
                  validator: (val) {
                    return val.isEmpty ? "Enter name" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Full Name",
                  ),
                  onChanged: (val) {
                    email = val;
                  },
                ),
                TextFormField(
                  validator: (val) {
                    return val.isEmpty ? "Enter email" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "E-mail",
                  ),
                  onChanged: (val) {
                    email = val;
                  },
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  validator: (val) {
                    return val.isEmpty ? "Enter password" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  onChanged: (val) {
                    password = val;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width - 48,
                    height: 50,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Sign In ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 15.5,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 15.5,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            )),
      ),
    );
  }
}
