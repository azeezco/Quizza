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
              SizedBox(
                height: 50,
              ),
              Text(
                'What is the name of NASA most famous sapce telescope?',
                textAlign: TextAlign.center,
                style: kQuestionStyle,
              ),
              SizedBox(
                height: 130,
              ),
              Options(),
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
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          shape: koptionBorderShape,
          tileColor: kOptionsBackgroundColor,
          selectedTileColor: kQuizzaColor,
          selected: _isSelected,
          onTap: () {
            setState(() {
              _isSelected = true;
            });
          },
          title: Text(
            'Big Eye',
            style: kTextStyle,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          shape: koptionBorderShape,
          selectedTileColor: kQuizzaColor,
          tileColor: kOptionsBackgroundColor,
          selected: _isSelected,
          onTap: () {
            setState(() {
              _isSelected = true;
            });
          },
          title: Text(
            'Hubble Space Telescope',
            style: kTextStyle,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          shape: koptionBorderShape,
          tileColor: kOptionsBackgroundColor,
          selectedTileColor: kQuizzaColor,
          selected: _isSelected,
          onTap: () {
            setState(() {
              _isSelected = true;
            });
          },
          title: Text(
            'Death Star',
            style: kTextStyle,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          shape: koptionBorderShape,
          tileColor: kOptionsBackgroundColor,
          selectedTileColor: kQuizzaColor,
          selected: _isSelected,
          onTap: () {
            setState(() {
              _isSelected = true;
            });
          },
          title: Text(
            'Millennium Falcon',
            style: kTextStyle,
          ),
        ),
      ],
    );
  }
}
