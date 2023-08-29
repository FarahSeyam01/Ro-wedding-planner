import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_planner_application/models/kitchen_list.dart';
import 'package:wedding_planner_application/models/user_model.dart';
import 'package:wedding_planner_application/modules/Login/login.dart';
import 'package:wedding_planner_application/shared/components/components.dart';

import '../Layout Screens/layout_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool showPassword = true;
  DateTime selectedDate = DateTime.now();
  DateTime newDate = DateTime.now();

  var emailController = TextEditingController();
  var passController = TextEditingController();
  var brideController = TextEditingController();
  var groomController = TextEditingController();
  var styleController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pink,
        title: Text(
          "Register",
          style: GoogleFonts.openSans(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: paige,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style: GoogleFonts.openSans(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      final bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (value!.isEmpty) {
                        return "Email can't be empty";
                      } else if (emailValid == false) {
                        return "Email format not valid";
                      }
                      return null;
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be empty";
                      }
                      if ((value.length < 6)) {
                        return "Password can't be less than 6 characters";
                      }
                      return null;
                    },
                    controller: passController,
                    obscureText: showPassword,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: Icon(
                          showPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Bride's name can't be empty";
                      }
                      return null;
                    },
                    controller: brideController,
                    decoration: InputDecoration(
                      labelText: "Bride's name",
                      prefixIcon: Icon(
                        Icons.girl,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Groom's name can't be empty";
                      }
                      return null;
                    },
                    controller: groomController,
                    decoration: InputDecoration(
                      labelText: "Groom's name",
                      prefixIcon: Icon(
                        Icons.boy,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Date of wedding",
                        style: GoogleFonts.openSans(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: selectedDate,
                      onDateTimeChanged: (DateTime newDateTime) {
                        newDate = newDateTime;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field can't be empty";
                      }
                      return null;
                    },
                    controller: styleController,
                    decoration: InputDecoration(
                      labelText: "Wedding style (indoor, outdoor, etc)",
                      prefixIcon: Icon(Icons.gps_fixed),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: MaterialButton(
                      onPressed: () async {
                        String day =
                            "${newDate.day}/${newDate.month}/${newDate.year}";
                        print(day);
                        if (formKey.currentState!.validate()) {
                          print(emailController.text);
                          print(passController.text);
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passController.text)
                              .then(
                            (value) async {
                              print(value.user?.email);
                              print(value.user?.uid);
                              final docUser = FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(value.user?.uid);
                              final docUserSong = FirebaseFirestore.instance
                                  .collection('song list')
                                  .doc(value.user?.uid);
                              final docUserInvitation = FirebaseFirestore
                                  .instance
                                  .collection('invitation list')
                                  .doc(value.user?.uid);
                              final docUserkitchen = FirebaseFirestore.instance
                                  .collection('kitchen')
                                  .doc(value.user?.uid);
                              final user = UserModel(
                                uid: docUser.id,
                                brideName: brideController.text,
                                groomName: groomController.text,
                                WeddingStyle: styleController.text,
                                email: emailController.text,
                                weddingDay: day,
                              );
                              final kitchen = KitchenModel(
                                china: false,
                                bi: false,
                                dinner: false,
                                gran: false,
                                pot: false,
                                stain: false,
                              );
                              final json = user.toJson();
                              final jsn = kitchen.toJson();
                              await docUser.set(json);
                              await docUserSong.set({});
                              await docUserInvitation.set({});
                              await docUserkitchen.set(jsn);
                              setProfileId(value.user?.uid);
                              print(getProfileId());
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => LayoutScreen()));
                            },
                          ).catchError((error) {
                            print(error.toString());
                          });
                        }
                      },
                      child: Text(
                        "Register",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account',
                        style: GoogleFonts.openSans(),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.openSans(
                            color: darkGreen,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
