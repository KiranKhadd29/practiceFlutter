
import 'package:flutter/material.dart';

TextStyle mTextStyle1() {
  return TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic
  );
}
TextStyle mTextStyle2(
    {
      //not required properties
      Color textColor = Colors.black,
      FontWeight fontWeight = FontWeight.normal
    }){
  return TextStyle(
      fontSize: 21,
      color: textColor,
      fontWeight: fontWeight
  );
}