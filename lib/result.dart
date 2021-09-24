import 'package:flutter/material.dart';
import "test.dart";

class Result extends StatelessWidget {
  final Function() q;
   final int resultScore;
  Result(this.q,this.resultScore);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$resultScore",
          style: TextStyle(fontSize: 25),
        ),
        Center(
            child:
            Container(
              child: InkWell(
          child: Container(
              child: Text(
                "Result",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.blue,letterSpacing: 5),
              ),
          ),
          onTap: q,
        ),
            ))
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
