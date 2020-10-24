import 'package:flutter/material.dart';
import 'package:mullr_website/landingPage/components.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget desktopLayout(){
  // Return a widget function per orientation
  return OrientationLayoutBuilder(
    portrait: (context) => desktopPortrait(),
    landscape: (context) => desktopPortrait(),
  );
}

Widget desktopPortrait(){
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