import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_planner_application/dio/getData.dart';
import 'package:wedding_planner_application/models/user_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserModel? userModel;
  bool isLoading = true;
  getUser() async {
    userModel = await GetData().readUsers();
    print(userModel?.WeddingStyle);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    getUser();
    print(userModel?.WeddingStyle);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            color: Color(0xFFF7E7CE),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/images/wedding.webp",
                          height: 150.0,
                          //width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffc0d8c0),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.girl),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Bride's Name",
                                    style: GoogleFonts.playfairDisplay(
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffc0d8c0),
                              ),
                              child: Text(
                                "${userModel?.brideName}",
                                style: GoogleFonts.playfairDisplay(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffc0d8c0),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.boy),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Groom's Name",
                                    style: GoogleFonts.playfairDisplay(
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffc0d8c0),
                              ),
                              child: Text(
                                "${userModel?.groomName}",
                                style: GoogleFonts.playfairDisplay(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffc0d8c0),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Wedding day",
                                style: GoogleFonts.playfairDisplay(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffc0d8c0),
                          ),
                          child: Text(
                            "${userModel?.weddingDay}",
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffc0d8c0),
                          ),
                          child: Row(
                            children: [
                              FaIcon(FontAwesomeIcons.building),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Wedding style",
                                style: GoogleFonts.playfairDisplay(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffc0d8c0),
                          ),
                          child: Text(
                            "${userModel?.WeddingStyle}",
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
