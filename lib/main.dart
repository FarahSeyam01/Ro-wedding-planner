import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wedding_planner_application/modules/Layout%20Screens/category_screen.dart';
import 'package:wedding_planner_application/modules/Layout%20Screens/layout_screen.dart';
import 'package:wedding_planner_application/modules/Login/Register.dart';
import 'package:wedding_planner_application/modules/Login/login.dart';
import 'package:wedding_planner_application/modules/Login/onboarding.dart';
import 'package:wedding_planner_application/modules/about/about_app.dart';
import 'package:wedding_planner_application/modules/about/developer_screen.dart';
import 'package:wedding_planner_application/modules/checklist/invitation_screen.dart';
import 'package:wedding_planner_application/modules/checklist/kitchen.dart';
import 'package:wedding_planner_application/modules/checklist/show_invitation.dart';
import 'package:wedding_planner_application/modules/checklist/show_song.dart';
import 'package:wedding_planner_application/modules/checklist/song_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  await Firebase.initializeApp();
  runApp( MyApp(showHome:showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({
    Key? key,
    required this.showHome,
  }): super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: showHome ? LayoutScreen() : onBoarding(),
    );
  }
}
