import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
final String answerText;
 final Function ()x;
 Answer(this.answerText,this.x);
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue,margin: EdgeInsets.all(10),width: double.infinity,child: MaterialButton(onPressed:x,
      child: Text(answerText,style: TextStyle(fontSize: 25),),),);
  }
}
