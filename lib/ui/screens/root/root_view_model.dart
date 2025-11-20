import 'package:flutter/material.dart';
import 'package:learning/ui/screens/home/home_screen.dart';
import 'package:learning/ui/screens/profile/porfile.dart';
import 'package:learning/ui/screens/workout/workout_screen.dart';

class RootViewModel extends ChangeNotifier {
  int selectedIndex = 0;
  onClick(index) {
    selectedIndex = index;
    notifyListeners();
  }

  ///
  /// Screens
  ///
  List<Widget> screens = [HomeScreen(), WorkoutScreen(), PorfileScreen()];
}
