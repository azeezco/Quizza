// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizza/screens/no_connection_page.dart';
import 'package:quizza/screens/question_page.dart';
import 'internet_checker.dart';

void main() {
  runApp(const MyApp());
}

//InternetChecker _internetChecker = InternetChecker();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//_internetChecker.main();
//bool value = _internetChecker.isConnected;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionPage(),
    );
  }
}
