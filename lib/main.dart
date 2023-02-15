import 'package:flutter/material.dart';
import 'package:quizer/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';



Questions q1 =Questions();//instance of Questions
void main() {
  runApp(const Quizer());
}

class Quizer extends StatelessWidget {
  const Quizer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(child: QuizePage()),
      ),
    );
  }
}
class QuizePage extends StatefulWidget {
  const QuizePage({Key? key}) : super(key: key);
  @override
  State<QuizePage> createState() => _QuizePageState();
}
class _QuizePageState extends State<QuizePage> {
  List<Icon> answerBar = [];
  // List<String>questions=[
  //   'puspa kamal dhal is the  Primeminister of Nepal',
  //   'Nepal is the landlock country ',
  //   'paras khadka is the Captain of Nepal'
  // ];
 // Question q1= Question(  question: 'Binod khanal is the Ceo of The viralNepal',correctAnswer: true);
  // List<bool> answer=[true, false,false];
  // int answerIndex=0;
  void getAnswer(bool userInput){

    bool correctAnswer = q1.getanswer();
    setState(() {
      if(q1.isFinished()==true){

        Alert(
            context: context,
            title: 'Finished!',
            desc: 'you\'ve complete the qustion.'

        ).show();

        q1.reset();
        answerBar=[];

      }
      else {
        if (correctAnswer==userInput){
          answerBar.add( Icon(Icons.check,color: Colors.green,));

        }else{
          answerBar.add( Icon(Icons.clear,color: Colors.red,));
        }
        q1.nextQuestion();
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
         flex: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(q1.getQuestion(),
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),

        TextButton(
            onPressed: () {
              getAnswer(true);
            },
            child: const Text(
              'True',
              style: TextStyle(fontSize: 20),
            )),
        TextButton(
            onPressed: () {
              getAnswer(false);

            }, child: const Text(
              'False',
              style: TextStyle(fontSize: 20),
            )),
        Expanded(
          child:Row(

               children: answerBar,
            ),
          ),

      ],
    );
  }
}
