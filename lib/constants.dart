//import 'dart:ffi';

import 'package:flutter/material.dart';

const Color authColor = Color(0x22a6b3);

// ignore: non_constant_identifier_names
InputDecoration AuthInputDec(String label, String hint, prefix) {
  return InputDecoration(
    label: Text(label),
    prefixIcon: prefix,
    contentPadding: const EdgeInsets.all(15),
    hintText: hint,
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.blue, width: 2),
    ),
  );
}

ElevatedButton kbutton(color, text, textcolor, double px, Function function) {
  return ElevatedButton(
    onPressed: () => function(),
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      disabledForegroundColor: textcolor.withOpacity(0.38),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: textcolor,
        fontSize: 24,
      ),
    ),
//padding: EdgeInsets.symmetric(vertical: 10, horizontal: px),
  );
}
