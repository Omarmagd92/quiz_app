


import 'dart:ui';

import 'package:flutter/material.dart';

class TextNew extends StatelessWidget{

  String? text;
  static TextStyle textstyle=TextStyle(fontSize: 40,color: Colors.red,);
  TextNew(this.text , textstyle);

  @override
  Widget build(BuildContext context) {
    return Text(text!,style:  textstyle);
  }

}