import 'package:flutter/material.dart';
import 'package:quizzer/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzer());

class Quizzer extends StatelessWidget {
  // const Quizzer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: HomeQuiz(),
            ),
          ),
        ));
  }
}

class HomeQuiz extends StatefulWidget {
//  const ({Key? key}) : super(key: key);

  @override
  State<HomeQuiz> createState() => _HomeQuizState();
}


class _HomeQuizState extends State<HomeQuiz> {
  List<Widget> scoreKeeper = [];
  var quiz ;
  void checkAnswer(bool userPickerAnswer){
    setState(() {
      if(quizBrain.isFinish()==true){
        Alert(context: context,
        type: AlertType.info,
          title: "You're Finish",
          desc: "You have reached to final question",
        ).show();
      }else{
    bool correctAnswer = quizBrain.getQuestionAnswer();
    if (userPickerAnswer == correctAnswer ) {
      scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
    } else {
      scoreKeeper.add(Icon(Icons.clear,color: Colors.red,));
    }
      quizBrain.getNextQuestion();
    }});
  }
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Text(
              quizBrain.getQuestionText(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.green),
          onPressed: () {
            checkAnswer(true);
          },
          child: Text("True"),
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.red),
          onPressed: () {
            checkAnswer(false);
          },
          child: Text("False"),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
