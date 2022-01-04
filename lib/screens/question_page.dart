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
            crossAxisAlignment: CrossAxisAlignment.center,
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

List<String> optionsValue = [
  'Big Eye',
  'Hubble Space Telescope',
  'Death Star',
  'Millennium Falcon'
];

enum options { option1, option2, option3, option4 }

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  options? _optionSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            shape: koptionBorderShape,
            tileColor: kOptionsBackgroundColor,
            selectedTileColor: kQuizzaColor,
            selected: _optionSelected == options.option1 ? true : false,
            title: Text(
              optionsValue[0],
              style: kTextStyle,
            ),
            leading: Radio<options>(
              value: options.option1,
              groupValue: _optionSelected,
              onChanged: (
                options? value,
              ) {
                setState(() {
                  _optionSelected = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
              shape: koptionBorderShape,
              selectedTileColor: kQuizzaColor,
              tileColor: kOptionsBackgroundColor,
              selected: _optionSelected == options.option2 ? true : false,
              title: Text(
                optionsValue[1],
                style: kTextStyle,
              ),
              leading: Radio<options>(
                value: options.option2,
                groupValue: _optionSelected,
                onChanged: (options? value) {
                  setState(() {
                    _optionSelected = value;
                  });
                },
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
              shape: koptionBorderShape,
              tileColor: kOptionsBackgroundColor,
              selectedTileColor: kQuizzaColor,
              selected: _optionSelected == options.option3 ? true : false,
              title: Text(
                optionsValue[2],
                style: kTextStyle,
              ),
              leading: Radio<options>(
                value: options.option3,
                groupValue: _optionSelected,
                onChanged: (options? value) {
                  setState(() {
                    _optionSelected = value;
                  });
                },
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
              shape: koptionBorderShape,
              tileColor: kOptionsBackgroundColor,
              selectedTileColor: kQuizzaColor,
              selected: _optionSelected == options.option4 ? true : false,
              title: Text(
                optionsValue[3],
                style: kTextStyle,
              ),
              leading: Radio<options>(
                value: options.option4,
                groupValue: _optionSelected,
                onChanged: (options? value) {
                  setState(() {
                    _optionSelected = value;
                  });
                },
              )),
        ],
      ),
    );
  }
}

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({
    Key? key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
        }
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Radio<bool>(
              groupValue: groupValue,
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
