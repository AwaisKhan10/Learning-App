import 'package:flutter/material.dart';

import 'package:learning/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: pinkColor,
      //     title: Text(
      //       "Flutter MVVM",
      //       style: TextStyle(
      //         color: whiteColor,
      //         fontSize: 16,
      //         fontWeight: FontWeight.w600,
      //       ),
      //     ),
      //   ),
      //   body: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Text("Flutter MVVM", style: style14B.copyWith(color: pinkColor)),

      //         Text("Flutter MVVM", style: style14B.copyWith(color: pinkColor)),
      //         Text(
      //           "Flutter MVVM",
      //           style: style14B.copyWith(color: blackColor, fontSize: 40),
      //         ),
      //         Text("Flutter MVVM", style: style14B.copyWith(color: pinkColor)),
      //         Text("Flutter MVVM", style: style14B.copyWith(color: pinkColor)),
      //         Text("Flutter MVVM", style: style14B.copyWith(color: pinkColor)),
      //         Text("Flutter MVVM", style: style14B.copyWith(color: pinkColor)),
      //         Text("Flutter MVVM", style: style14B.copyWith(color: pinkColor)),

      //         Image.asset(AppAssets.checkIcon, scale: 6),
      //       ],
      //     ),
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     backgroundColor: pinkColor,
      //     onPressed: () {},
      //     child: Icon(Icons.chat, color: whiteColor),
      //   ),
      // ),
    );
  }
}
