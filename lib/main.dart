// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizza/screens/no_connection_page.dart';
import 'package:quizza/screens/question_page.dart';
import 'internet_checker.dart';

void main() {
  runApp(const MyApp());
}

InternetChecker _internetChecker = InternetChecker();
String value = _internetChecker.check().toString();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: value == 'true' ? QuestionPage() : NoConnectionPage(),
    );
  }
}
