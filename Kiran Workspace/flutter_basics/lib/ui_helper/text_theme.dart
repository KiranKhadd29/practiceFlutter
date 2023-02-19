import 'package:flutter/material.dart';

TextStyle KiranTS11(){
  return TextStyle(fontSize: 11);
}
TextStyle KiranTS15(){
  return TextStyle(fontSize: 15);
}
TextStyle KiranTS25 (
    {
      Color textColor = Colors.deepOrange,
      FontWeight fontWeight = FontWeight.bold,
    }
    )
      {
        return TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: 25
        );
      }