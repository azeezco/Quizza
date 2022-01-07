// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quizza/constants.dart';
import 'package:quizza/components/options_list_tile.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int value = 0;
  Widget CustomRadioButton(String text, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          value = index;
          print("You clicked $text at index $index, with value $value");
        });
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Colors.white),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: (value == index) ? Colors.green : Colors.black,
        ),
      ),
    );
  }

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
              Column(
                children: [
                  CustomRadioButton("Single", 1),
                  CustomRadioButton("Married", 2),
                  CustomRadioButton("Others", 3),
                ],
              ),
              // OptionsListTile(),
            ],
          ),
        ));
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
