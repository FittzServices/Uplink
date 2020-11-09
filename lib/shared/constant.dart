import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
  focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0)),
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  labelStyle: TextStyle(
    color: Colors.white,
  ),
);