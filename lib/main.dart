import 'package:flutter/material.dart';
import './homepage.dart';
import './loginpage.dart';
import './events.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        "/HomePage": (BuildContext context) => HomePage(),
        "/SecondPage": (BuildContext context) => Second(),
        "/LoginPage": (BuildContext context) => Login(),
        "/EventsPage": (BuildContext context) => Events()
      },
    );
  }
}


