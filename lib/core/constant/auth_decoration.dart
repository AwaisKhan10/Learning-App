import 'package:flutter/material.dart';

const authInputDecoration = InputDecoration(
  fillColor: Color(0xfffEFF3FF),
  filled: true,
  hintText: "Email Adress",
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xfffEFF3FF)),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xfffEFF3FF), width: 6),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xfffEFF3FF), width: 6),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 6),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xfffEFF3FF), width: 6),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
);
