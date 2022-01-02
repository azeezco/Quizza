// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quizza/constants.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              Text(
                'Quizza',
                style: kQuizzaStyle,
              ),
              Text('What is the name of NASA most famous sapce telescope?',
                  style: kTextStyle),
              Options(),
              TextButton(
                onPressed: () {},
                child: Text(''),
              ),
              TextButton(
                onPressed: () {},
                child: Text(''),
              ),
              TextButton(
                onPressed: () {},
                child: Text(''),
              ),
              TextButton(
                onPressed: () {},
                child: Text(''),
              ),
            ],
          ),
        ));
  }
}

List<String> options = [
  'Big Eye',
  'Hubble Space Telescope',
  'Death Star',
  'Millennium Falcon'
];

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  final String? _quetion = options[1];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(options[0]),
        )
      ],
    );
  }
}
