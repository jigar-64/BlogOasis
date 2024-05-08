import 'package:flutter/material.dart';

InputDecoration buildInputDecoration(String hinttext) {
  return InputDecoration(
    hintText: hinttext, hintStyle: TextStyle(fontSize: 16),
    isDense: true,
    // prefixIcon: Icon(icons),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide:
          BorderSide(color: Color.fromARGB(204, 158, 158, 158), width: 1.5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Color.fromARGB(204, 158, 158, 158),
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Color.fromARGB(204, 158, 158, 158),
        width: 1.5,
      ),
    ),
  );
}
