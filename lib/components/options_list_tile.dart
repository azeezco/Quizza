import 'package:flutter/material.dart';
import 'package:quizza/constants.dart';

enum options { option1, option2, option3, option4 }

class OptionsListTile extends StatefulWidget {
  const OptionsListTile({Key? key}) : super(key: key);

  @override
  _OptionsListTile createState() => _OptionsListTile();
}

class _OptionsListTile extends State<OptionsListTile> {
  options? _optionSelected;

  List<String> optionsValue = [
    'Big Eye',
    'Hubble Space Telescope',
    'Death Star',
    'Millennium Falcon'
  ];

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
