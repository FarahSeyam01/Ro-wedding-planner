import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_planner_application/modules/Layout%20Screens/category_screen.dart';
import 'package:wedding_planner_application/modules/Layout%20Screens/layout_screen.dart';
import 'package:wedding_planner_application/modules/about/developer_screen.dart';

class AboutAppScreen extends StatefulWidget {
  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ro Wedding Planner",
          style: GoogleFonts.playfairDisplay(),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffb3c6),
      ),
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/aboouut.jpg"),
                  fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Color(0xFFF7E7CE),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                        height: 100,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        color: Color(0xffc0d8c0),
                        child: Text(
                          "Start Planning now",
                          style: GoogleFonts.playfairDisplay(),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LayoutScreen(),
                            ),
                          );
                        }),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
