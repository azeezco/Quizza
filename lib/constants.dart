import 'package:flutter/material.dart';

const Color kBackgroundColor = Color(0xFF13244F);
const Color kOptionsBackgroundColor = Color(0xFF000100);
const Color kQuizzaColor = Color(0xFFF15A2A);
const ShapeBorder koptionBorderShape = RoundedRectangleBorder(
  side: BorderSide(color: Color(0xFF555555), width: 2.0),
  borderRadius: BorderRadius.all(
    Radius.circular(3),
  ),
);
const TextStyle kQuizzaStyle = TextStyle(
  fontFamily: 'Baking',
  fontSize: 80.0,
  fontWeight: FontWeight.bold,
  color: kQuizzaColor,
);
const TextStyle kTextStyle = TextStyle(
  fontFamily: 'Lato',
  fontSize: 20.0,
  color: Colors.white,
);
const TextStyle kQuestionStyle = TextStyle(
  fontFamily: 'Lato',
  fontSize: 25.0,
  color: Colors.white,
);
const TextStyle kButtonStyle = TextStyle(
  fontFamily: 'Lato',
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);
