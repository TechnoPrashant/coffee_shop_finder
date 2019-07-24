import 'dart:async';

import 'package:flutter/material.dart';
import 'package:coffee_shop_finder/utils/StringUtils.dart';
import 'package:coffee_shop_finder/SignupScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          primaryColor: Colors.white),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/SignupScreen': (BuildContext context) => new SignupScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/SignupScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(StringUtils().strBG), fit: BoxFit.fill)),
        child: Image.asset(StringUtils().strLogo),
      ),
    );
  }
}
