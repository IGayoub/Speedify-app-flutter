import 'package:flutter/material.dart';
import 'package:project5/util/color.dart';

const styleTitleAb = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 25,
    letterSpacing: 1.8,
    fontStyle: FontStyle.normal);
const styleTextBold1 = TextStyle(
  color: Colors.white,
  fontSize: 15.5,
  fontWeight: FontWeight.bold,
);
const styleTextNormal = TextStyle(
  color: Colors.white,
  fontSize: 14.5,
  fontWeight: FontWeight.normal,
);
const styleConnect = TextStyle(
  color: Color(0xff2D2D2F),
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

const styleFa = TextStyle(
  color: Colors.white,
  fontSize: 13,
  fontWeight: FontWeight.normal,
);
final styleBtnUP = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(
    Color(0xff08D237),
  ),
  elevation: MaterialStateProperty.all(10),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40),
    ),
  ),
);
const styleCborder = BoxDecoration(
  color: blackShade3,
  border: Border.symmetric(
    horizontal: BorderSide(
      color: greyShade3,
      width: 1,
    ),
  ),
);
const styleTextLong = TextStyle(
    color: Colors.white,
    fontSize: 14.5,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1);
