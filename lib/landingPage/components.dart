import 'package:flutter/material.dart';

Widget intro() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text("Hello World")],
  );
}

Widget fitJo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Hello World"),
      Container(
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Image.asset("assets/images/fitjo_logo_app_store.jpg")),
      )
    ],
  );
}