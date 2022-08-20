import 'dart:ffi';

import 'package:flutter/material.dart';

const Color authColor = Color(0x22a6b3);

InputDecoration AuthInputDec(String label, String hint, prefix) {
  return InputDecoration(
    label: Text(label),
    prefixIcon: prefix,
    contentPadding: EdgeInsets.all(15),
    hintText: hint,
    hintStyle: TextStyle(
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.blue, width: 2),
    ),
  );
}

RaisedButton kbutton(color, text, textcolor, double px, Function function) {
  return RaisedButton(
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: px),
    onPressed: () => function(),
    child: Text(
      text,
      style: TextStyle(
        color: textcolor,
        fontSize: 24,
      ),
    ),
  );
}

final kshadow = BoxShadow(
  color: Colors.grey,
  offset: Offset.zero,
  blurRadius: 3,
);
