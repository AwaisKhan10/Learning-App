// import 'package:flutter/material.dart';

// class BottomNavigatorBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       height: 80,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.center,
//           end: Alignment.center,
//           colors: [Color(0xffFE2B5F), Color(0xffD02E56)],
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: () {
//               onClick(0);
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   "$iconsAssets/home.png",
//                   height: 16,
//                   width: 16,
//                   color: selectedIndex == 0 ? blackColor : whiteColor,
//                 ),
//                 Text(
//                   "Home",
//                   style: style16B.copyWith(
//                     fontWeight: FontWeight.w400,
//                     color: selectedIndex == 0 ? blackColor : whiteColor,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               onClick(1);
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   "$iconsAssets/workout.png",
//                   height: 16,
//                   width: 16,
//                   color: selectedIndex == 1 ? blackColor : whiteColor,
//                 ),
//                 Text(
//                   "Workout",
//                   style: style16B.copyWith(
//                     fontWeight: FontWeight.w400,
//                     color: selectedIndex == 1 ? blackColor : whiteColor,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               onClick(2);
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   "$iconsAssets/profile.png",
//                   height: 16,
//                   width: 16,
//                   color: selectedIndex == 2 ? blackColor : whiteColor,
//                 ),
//                 Text(
//                   "Profile",
//                   style: style16B.copyWith(
//                     fontWeight: FontWeight.w400,
//                     color: selectedIndex == 2 ? blackColor : whiteColor,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
