import 'package:flutter/material.dart';

const authInputDecoration = InputDecoration(
  fillColor: Colors.purpleAccent,
  filled: true,
  helperText: "Email",
  hintText: "Email Adress",
  prefixIcon: Icon(Icons.email, color: Colors.black),
  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 7),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 7),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 7),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 7),
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
);
