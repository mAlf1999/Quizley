import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quizley/views/create_quiz.dart';

import 'widgets/widgets.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Container(
        child: Column(children: [

        ],)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icons(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => CreateQuiz()
          ))
        },
      )
      ),
    );
  }
}
