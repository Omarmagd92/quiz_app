import 'package:flutter/material.dart';
import 'package:untitled/answer.dart';
import 'package:untitled/question.dart';
import 'package:untitled/result.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  // ignore: non_constant_identifier_names
  final List<Map<String, Object>> L1 = [
    {
      "question": "what's your favourite color?",
      "answer": [
        {"text": "red", "score": 10},
        {"text": "yellow", "score": 20},
        {"text": "green", "score": 30},
        {"text": "white", "score": 40}
      ]
    },
    {
      "question": "what's your favourite animal?",
      "answer": [
        {"text": "lion", "score": 10},
        {"text": "dog", "score": 20},
        {"text": "elephant", "score": 30},
        {"text": "tiger", "score": 40}
      ]
    },
    {
      "question": "what's your favourite instructor?",
      "answer": [
        {"text": "omar1", "score": 10},
        {"text": "omar2", "score": 20},
        {"text": "omar3", "score": 30},
        {"text": "omar4", "score": 40}
      ]
    }
  ];
  int listindex = 0;
  int totalScore = 0;
   void answerQuestion(int score) {
   totalScore+=score;
    setState(() {
      listindex += 1;
    });
    print(listindex);
   print(totalScore);
  }

  void ResetQuiz() {
    setState(() {
      listindex = 0;
      totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "quiz app",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: listindex < L1.length
          ? Column(
              children: [
                Question(L1[listindex]["question"].toString()),
                ...(L1[listindex]["answer"] as List<Map<String,Object>>)
                    .map((e) => Answer(e["text"].toString(),()=> answerQuestion(int.parse(e["score"].toString()))))
                    .toList()
              ],
            )
          : Result(ResetQuiz,totalScore),
    );
  }
}
