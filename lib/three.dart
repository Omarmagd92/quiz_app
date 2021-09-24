import 'package:flutter/material.dart';


class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page three"),),
      body: Column(children: [Text("page three"),ElevatedButton(onPressed: (){Navigator.of(context).pushNamed("home");}, child: Text("go to home page"))],)

    );
  }
}