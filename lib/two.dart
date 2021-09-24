import 'package:flutter/material.dart';
import  'package:untitled/three.dart';

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page two"),),
      body: Column(children: [Text("page two"),ElevatedButton(onPressed: (){Navigator.of(context).pushNamed("three");}, child: Text("go to page three"))],),

    );
  }
}