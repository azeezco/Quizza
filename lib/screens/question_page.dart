// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:quizza/constants.dart';
import 'package:quizza/components/options_list_tile.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<String> optionsValue = [
    'Big Eye',
    'Hubble Space Telescope',
    'Death Star',
    'Millennium Falcon'
  ];

  int value = 0;
  Widget CustomRadioButton(String text, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          value = index;
        });
      },
      child: SizedBox(
        height: 50,
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: (value == index) ? kQuizzaColor : kOptionsBackgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: kTextStyle,
          ),
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
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomRadioButton(optionsValue[0], 1),
                    SizedBox(
                      height: 10,
                    ),
                    CustomRadioButton(optionsValue[1], 2),
                    SizedBox(
                      height: 10,
                    ),
                    CustomRadioButton(optionsValue[2], 3),
                    SizedBox(
                      height: 10,
                    ),
                    CustomRadioButton(optionsValue[3], 4),
                  ],
                ),
              ),

              // OptionsListTile(),
            ],
          ),
        ));
  }
}
