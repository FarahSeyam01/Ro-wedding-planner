import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_planner_application/modules/checklist/invitation_screen.dart';
import 'package:wedding_planner_application/modules/checklist/kitchen.dart';
import 'package:wedding_planner_application/modules/checklist/song_screen.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7E7CE),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //height:100,
                    width: double.infinity,
                    child: MaterialButton(
                      color: Color(0xffc0d8c0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KitchenScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Check lists",
                        style: GoogleFonts.playfairDisplay(),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //height:100,
                    width: double.infinity,
                    child: MaterialButton(
                      color: Color(0xffc0d8c0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SongScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Song list",
                        style: GoogleFonts.playfairDisplay(),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //height:100,
                    width: double.infinity,
                    child: MaterialButton(
                      color: Color(0xffc0d8c0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InvitationScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Invitation list",
                        style: GoogleFonts.playfairDisplay(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
