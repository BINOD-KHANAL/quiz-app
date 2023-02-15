

import 'package:quizer/questionbank.dart';

class Questions {

  int _answerindex=0;

  List<Question> _question=[


    Question(question: 'paras khakdka is the captain of Nepal Cricket', correctAnswer: false),
    Question(question: "Rajesh Hamal is the Mahanayak of Nepali film industry", correctAnswer:true),
    Question(question: 'TheSaurus tool is used for antonym or synonym in ms word', correctAnswer: true),
    Question(question: 'Charles Babage is the Father of computer', correctAnswer: true),
    Question(question: 'Kp shamrma oli is the curret Primminister of Nepal', correctAnswer: false),
    Question(question: 'ms word is introduce in 1981', correctAnswer: true),
    Question(question:'\"Internet protocol\" is the full form of Ip', correctAnswer: true),
    Question(question: "First generation computer introduced in 1946", correctAnswer: true),
    Question(question: 'The main electronic component used in first generation computer was vacum Tubes and Valves', correctAnswer: true),
    Question(question: 'Full form of ICT is"information communication technologies"', correctAnswer: true),
    Question(question: 'Super computer is the most powerful computer', correctAnswer: true),
    Question(question: 'Computer Monitor is also known as Vdu', correctAnswer: true),







  ];
void nextQuestion(){

  if(_answerindex< _question.length-1){
    _answerindex++;
  }
  print(_answerindex);
  print(_question.length);
}



// String getQuestion(int questionNumber){
//
//   return _question[questionNumber].question;
// }
// bool getcorrectAnswer(int questionNumber){
//
//   return _question[questionNumber].correctAnswer;
// }

String getQuestion(){
  return _question[_answerindex].question;


}
bool getanswer(){
  return _question[_answerindex].correctAnswer;

}

bool isFinished(){
  if(_answerindex>=_question.length-1){
    return true;
  }
  else{
    return false;
  }
}


void reset(){
  _answerindex=0;
}

}