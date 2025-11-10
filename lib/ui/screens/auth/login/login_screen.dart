import 'package:flutter/material.dart';
import 'package:learning/core/constant/auth_decoration.dart';
import 'package:learning/core/constant/colors.dart';
import 'package:learning/core/constant/strings.dart';
import 'package:learning/core/constant/text_style.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLogin = true;

  onChange() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("$staticAssets/login_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              margin: EdgeInsets.all(16),

              decoration: BoxDecoration(color: whiteColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: pinkColor,
                    child: Image.asset("$iconsAssets/logoo.png", scale: 3),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 16),
                      GestureDetector(
                        onTap: onChange,
                        child: Column(
                          children: [
                            Text(
                              "Login",
                              style: style16B.copyWith(
                                color: isLogin == true ? pinkColor : blackColor,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: isLogin == true
                                    ? pinkColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              height: 3,
                              width: 60,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 16),
                      GestureDetector(
                        onTap: onChange,
                        child: Column(
                          children: [
                            Text(
                              "SingUp",
                              style: style16B.copyWith(
                                color: isLogin == false
                                    ? pinkColor
                                    : blackColor,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: isLogin == false
                                    ? pinkColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(7),
                              ),
                              height: 3,
                              width: 60,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  isLogin
                      ? Column(
                          children: [
                            TextFormField(
                              decoration: authInputDecoration.copyWith(
                                hintText: "User Name",
                              ),
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: authInputDecoration.copyWith(
                                hintText: "Password ",
                              ),
                            ),
                            SizedBox(height: 16),
                            Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: pinkColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "Login",
                                style: style16B.copyWith(color: whiteColor),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            TextFormField(
                              decoration: authInputDecoration.copyWith(
                                hintText: "User Name",
                              ),
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              decoration: authInputDecoration.copyWith(
                                hintText: "Email ",
                              ),
                            ),

                            TextFormField(
                              decoration: authInputDecoration.copyWith(
                                hintText: "Password ",
                              ),
                            ),
                            SizedBox(height: 16),
                            Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: pinkColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "Singup",
                                style: style16B.copyWith(color: whiteColor),
                              ),
                            ),
                          ],
                        ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: TextFormField(decoration: authInputDecoration),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: TextFormField(
      //         decoration: authInputDecoration.copyWith(
      //           hintText: "Password",
      //           prefixIcon: Icon(Icons.password, color: blackColor),
      //           suffixIcon: Icon(Icons.remove_red_eye, color: blackColor),
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: TextFormField(
      //         decoration: InputDecoration(
      //           helperText: "password",
      //           hintText: "password Adress",
      //           prefixIcon: Icon(Icons.password, color: Colors.black),
      //           suffixIcon: Icon(Icons.check_circle, color: Colors.green),
      //           border: OutlineInputBorder(),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
