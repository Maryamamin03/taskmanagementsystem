import 'package:flutter/material.dart';
import 'package:taskms/constant.dart';

Widget customText(String text, double size){
  return Text(text,style: TextStyle(
    fontSize: size,
    color: kDark,
      fontWeight: FontWeight.bold,
  ),);
}