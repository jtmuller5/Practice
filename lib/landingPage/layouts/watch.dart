import 'package:flutter/material.dart';
import 'package:mullr_website/landingPage/components.dart';

Widget watchLayout(){
  return Scaffold(
    appBar: AppBar(
      title: Text("Joseph Muller"),

    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          intro(),
          fitJo(),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed:(){

      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ), // This trailing comma makes auto-formatting nicer for build methods.
  );
}