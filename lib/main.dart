import 'package:flutter/material.dart';
import 'package:mullr_website/global.dart' as global;
import 'package:responsive_builder/responsive_builder.dart';

import 'landingPage/layouts/desktop.dart';
import 'landingPage/layouts/mobile.dart';
import 'landingPage/layouts/tablet.dart';
import 'landingPage/layouts/watch.dart'; // For responsive UI

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mullr',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LandingPage extends StatefulWidget {
  LandingPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    global.screenWidth = MediaQuery.of(context).size.width;
    global.screenHeight = MediaQuery.of(context).size.height;
    super.initState();
  }

  // Dynamically select the layout based on the screen size
  //
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileLayout(),
      tablet: tabletLayout(),
      desktop: desktopLayout(),
      watch: watchLayout(),
    );
  }
}
