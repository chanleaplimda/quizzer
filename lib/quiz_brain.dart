import 'package:quizzer/question.dart';

class QuizBrain{
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(questionText: "Array start with number 1 and end with the length - 1 ", questionAnswer: false),
    Question(questionText: "HTML is one of programming language", questionAnswer: false),
    Question(questionText: "Flutter was develooped by Google Team", questionAnswer: true),
    Question(questionText: "Java can be runing on only Windows", questionAnswer: false),
    Question(questionText: "To print output in C++ we use 'System.out.print()'", questionAnswer: false),
    Question(questionText: "Facebook was founded by Mark Zuckerberg", questionAnswer: true),
    Question(questionText: "Amazon was found by Jack Ma", questionAnswer: false),
    Question(questionText: "If statement is process faster than if-else statement", questionAnswer: false),
    Question(questionText: "We can use ternary operator instead of if-else", questionAnswer: true),
    Question(questionText: "Const value can be change", questionAnswer: false),
    Question(questionText: "A class can be extends only one class", questionAnswer: true),
    Question(questionText: "A class can implement by many interface", questionAnswer: true),
    Question(questionText: "API stand for Application Program Insect", questionAnswer: false),
    Question(questionText: "OOP stand Object Oriented Programming languages", questionAnswer: true),
    Question(questionText: "We can install Oracle on the MacOS physical machine ", questionAnswer: false),
    Question(questionText: "Flutter is a hybrid framework that write one use anywhere", questionAnswer: true),
    Question(questionText: "Java is high level language", questionAnswer: true),
    Question(questionText: "OOP wasn't include to C++ Programming Language", questionAnswer: false),
    Question(questionText: "High Programming Language is easy for computer to understand", questionAnswer: false),
    Question(questionText: "Concepts OOP has been made since C Programming Language", questionAnswer: false),
    Question(questionText: "C# Programming Language was developed by Microsoft", questionAnswer: true),
  ];
  void getNextQuestion(){
    if(_questionNumber<_questionBank.length-1){
      _questionNumber++;
    }else{
      print(_questionNumber);
      print(_questionBank.length);
    }
  }

  String getQuestionText(){
   return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinish(){
    if(_questionNumber>=_questionBank.length-1){
      print("Now Return True");
      return true;
    }else{
      return false;
    }
  }
  void quizReset(){
    _questionNumber = 0 ;
  }
}