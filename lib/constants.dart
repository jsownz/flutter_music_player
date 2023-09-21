import 'package:flutter/material.dart';

const Color kLightGrayBackground = Color(0xff32373C);
const Color kDarkGrayBackground = Color(0xff181A1E);
const Color kTextColor = Color(0xff6D7274);

const RadialGradient kBackground = RadialGradient(
  center: Alignment(0, -1),
  radius: 1.8,
  stops: [0, .4, 1],
  colors: [
    kLightGrayBackground,
    kLightGrayBackground,
    kDarkGrayBackground,
  ],
);

const TextStyle kTextLabel = TextStyle(
  color: kTextColor,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.bold,
  fontSize: 14,
);

const TextStyle kSongTitle = TextStyle(
  color: Color(0xffaaabab),
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.bold,
  fontSize: 14,
);

TextStyle kSongArtist = kSongTitle.copyWith(
  color: kTextColor,
  fontSize: 13,
  fontWeight: FontWeight.w400,
);

TextStyle kNowPlayingTitle = kTextLabel.copyWith(
  fontSize: 30,
  fontWeight: FontWeight.w500,
  color: const Color(0xffaaabab),
);

TextStyle kNowPlayingArtist = kTextLabel.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
