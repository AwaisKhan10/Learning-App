import 'package:flutter/material.dart';
import 'package:learning/core/constant/colors.dart';
import 'package:learning/core/constant/strings.dart';
import 'package:learning/core/constant/text_style.dart';
import 'package:learning/ui/screens/home/home_screen.dart';
import 'package:learning/ui/screens/profile/porfile.dart';
import 'package:learning/ui/screens/workout/workout_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedIndex = 0;

  ///
  /// Screens
  ///
  List<Widget> screens = [HomeScreen(), WorkoutScreen(), PorfileScreen()];

  onClick(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      /// Start Body
      ///
      body: screens[selectedIndex],

      ///
      /// Botom Bar
      ///
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 80,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.center,
            colors: [Color(0xffFE2B5F), Color(0xffD02E56)],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _bottomNav(
              onTap: () {
                onClick(0);
              },
              img: "$iconsAssets/home.png",
              text: "Home",
              index: 0,
              selectedIndex: selectedIndex,
            ),
            _bottomNav(
              onTap: () {
                onClick(1);
              },
              img: "$iconsAssets/workout.png",
              text: "Workout",
              index: 1,
              selectedIndex: selectedIndex,
            ),
            _bottomNav(
              onTap: () {
                onClick(2);
              },
              img: "$iconsAssets/profile.png",
              text: "profile",
              index: 2,
              selectedIndex: selectedIndex,
            ),
            // GestureDetector(
            //   onTap: () {
            //     onClick(0);
            //   },
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [

            //       Image.asset(
            //         "$iconsAssets/home.png",
            //         height: 16,
            //         width: 16,
            //         color: selectedIndex == 0 ? blackColor : whiteColor,
            //       ),
            //       Text(
            //         "Home",
            //         style: style16B.copyWith(
            //           fontWeight: FontWeight.w400,
            //           color: selectedIndex == 0 ? blackColor : whiteColor,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // GestureDetector(
            //   onTap: () {
            //     onClick(1);
            //   },
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Image.asset(
            //         "$iconsAssets/workout.png",
            //         height: 16,
            //         width: 16,
            //         color: selectedIndex == 1 ? blackColor : whiteColor,
            //       ),
            //       Text(
            //         "Workout",
            //         style: style16B.copyWith(
            //           fontWeight: FontWeight.w400,
            //           color: selectedIndex == 1 ? blackColor : whiteColor,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // GestureDetector(
            //   onTap: () {
            //     onClick(2);
            //   },
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Image.asset(
            //         "$iconsAssets/profile.png",
            //         height: 16,
            //         width: 16,
            //         color: selectedIndex == 2 ? blackColor : whiteColor,
            //       ),
            //       Text(
            //         "Profile",
            //         style: style16B.copyWith(
            //           fontWeight: FontWeight.w400,
            //           color: selectedIndex == 2 ? blackColor : whiteColor,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

_bottomNav({
  required VoidCallback onTap,
  required String img,
  required String text,
  required int index,
  required int selectedIndex,
}) {
  bool isSelected = index == selectedIndex;
  return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          img,
          height: 16,
          width: 16,
          color: isSelected ? whiteColor : greyColor,
        ),
        Text(
          text,
          style: style16B.copyWith(
            fontWeight: FontWeight.w400,
            color: isSelected ? whiteColor : greyColor,
          ),
        ),
      ],
    ),
  );
}
