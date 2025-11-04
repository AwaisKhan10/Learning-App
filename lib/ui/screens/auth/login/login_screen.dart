import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning/core/constant/auth_decoration.dart';
import 'package:learning/core/constant/colors.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(decoration: authInputDecoration),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: authInputDecoration.copyWith(
                hintText: "Password",
                prefixIcon: Icon(Icons.password, color: blackColor),
                suffixIcon: Icon(Icons.remove_red_eye, color: blackColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                helperText: "password",
                hintText: "password Adress",
                prefixIcon: Icon(Icons.password, color: Colors.black),
                suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
