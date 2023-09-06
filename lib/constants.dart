import 'package:flutter/material.dart';

const Color kLightGrayBackground = Color(0xff32373C);
const Color kDarkGrayBackground = Color(0xff181A1E);
const Color kTextColor = Color(0xff6D7274);

const LinearGradient kBackground = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  stops: [0, 1],
  colors: [kLightGrayBackground, kDarkGrayBackground],
);

const kTextLabel = TextStyle(
  color: kTextColor,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.bold,
);
