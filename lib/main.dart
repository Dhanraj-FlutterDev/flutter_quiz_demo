import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Quiz App',style: TextStyle(letterSpacing: 2.0),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              QuizView(
                image: Container(
                  height: 150,
                  width: 140,
                  child: Image.asset('assets/image2.png',fit: BoxFit.fill,),
                ),
                  showCorrect: true,
                  questionTag: 'Question 1',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'What is the Color of the Player?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Green',
                  wrongAnswers: ['Red','Yellow'],
                  onRightAnswer: ()=> print('Right!'),
                  onWrongAnswer: (){
                  Alert(
                      context: context,
                      title: 'Wrong!',
                  ).show();
                  }
              ),
              SizedBox(height: 10,),
              QuizView(
                  image: Container(
                    height: 150,
                    width: 140,
                    child: Image.asset('assets/image3.png',fit: BoxFit.fill,),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 2',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'What is the Color of the Player?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Red',
                  wrongAnswers: ['Green','Yellow'],
                  onRightAnswer: ()=> print('Right!'),
                  onWrongAnswer: (){
                    Alert(
                      context: context,
                      title: 'Wrong!',
                    ).show();
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

















