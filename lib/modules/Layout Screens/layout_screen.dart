import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wedding_planner_application/modules/Layout%20Screens/category_screen.dart';
import 'package:wedding_planner_application/modules/Layout%20Screens/main_screen.dart';
import 'package:wedding_planner_application/modules/Layout%20Screens/profile_screen.dart';
import 'package:wedding_planner_application/modules/Login/onboarding.dart';
import 'package:wedding_planner_application/modules/about/about_app.dart';
import 'package:wedding_planner_application/modules/about/developer_screen.dart';
import 'package:wedding_planner_application/shared/components/components.dart';

class LayoutScreen extends StatefulWidget {
  @override
  State<LayoutScreen> createState() => _ScreenState();
}

class _ScreenState extends State<LayoutScreen> {
  int currentindex = 0;
  List<Widget> screens = [
    MainScreen(),
    ProfileScreen(),
    CategoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DeveloperScreen(),
            ),
          );
        },
        backgroundColor: Color(0xffc0d8c0),
        child: Icon(Icons.phone),
      ),
      appBar: AppBar(
        title: Text(
          "Ro Wedding Planner",
          style: GoogleFonts.playfairDisplay(),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffb3c6),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAppScreen(),
                ),
              );
            },
            icon: Icon(Icons.help),
          ),
          IconButton(
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('showHome', false);
              Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=> onBoarding())
                  );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        backgroundColor: Colors.grey[150],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Main",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.rectangleList),
            label: "Categories",
          ),
        ],
      ),
    );
  }
}
