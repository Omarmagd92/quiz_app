import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/mycounter.dart';
class Next extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("next page"),),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text("next counter")
        ,Consumer<MyCounter>(builder: (context, mycounter, child) => Text("${mycounter.counter}"),)],),),
    );
  }

}