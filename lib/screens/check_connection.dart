// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizza/constants.dart';

class CheckConnection extends StatelessWidget {
  const CheckConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Quizza',
              style: kQuizzaStyle,
            ),
            Center(
              child: CircleAvatar(
                radius: 100.0,
                backgroundColor: kBackgroundColor,
                backgroundImage: AssetImage('images/sad_smiley.png'),
              ),
            ),
            Text(
              'Sorry,Unable to conect to the internet',
              style: kErrorMsgStyle,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(90.0, 23.0),
                primary: Colors.white,
                onPrimary: Colors.black,
                onSurface: Colors.grey[300],
                padding: EdgeInsets.all(5.0),
                elevation: 3.0,
              ),
              child: Text(
                'RELOAD',
                style: kButtonStyle,
              ),
            ),
            //SizedBox(height: 35.0, width: 35.0),
          ],
        ),
      ),
    );
  }
}
