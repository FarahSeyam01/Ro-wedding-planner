import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_planner_application/modules/checklist/show_invitation.dart';

import '../../shared/components/components.dart';

class InvitationScreen extends StatefulWidget {
  const InvitationScreen({super.key});

  @override
  State<InvitationScreen> createState() => _InvitationScreenState();
}

class _InvitationScreenState extends State<InvitationScreen> {
  final docUser = FirebaseFirestore.instance
      .collection('invitation list')
      .doc(getProfileId());

  var invitationController1 = TextEditingController();
  var invitationController2 = TextEditingController();
  var invitationController3 = TextEditingController();
  var invitationController4 = TextEditingController();
  var invitationController5 = TextEditingController();
  var invitationController6 = TextEditingController();
  var invitationController7 = TextEditingController();
  var invitationController8 = TextEditingController();
  var invitationController9 = TextEditingController();
  var invitationController10 = TextEditingController();
  var invitationController11 = TextEditingController();
  var invitationController12 = TextEditingController();
  var invitationController13 = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //invitationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add your invitation member",
          style: GoogleFonts.playfairDisplay(),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffb3c6),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 60,
        color: pink,
      child: MaterialButton(
        onPressed:  ()  {
           Navigator.push(
                                          context, 
                                          MaterialPageRoute(
                                                builder: (context) =>ShowInvitation(),
                                               ),
                                                   );
      }, 
        child: const Text("Invitation List",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
        ),
      ),
      ) ,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          color: paige,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: invitationController1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update(
                                {'Invitation 1': invitationController1.text});
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update(
                                {'Invitation 2': invitationController2.text});
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController3,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 3':
                                  invitationController3.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController4,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 4':
                                  invitationController4.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController5,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 5':
                                  invitationController5.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController6,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 6':
                                  invitationController6.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController7,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                             'Invitation 7':
                                  invitationController7.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController8,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 8':
                                  invitationController8.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController9,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 9':
                                  invitationController9.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController10,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 10':
                                  invitationController10.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController11,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 11':
                                  invitationController11.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController12,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 12':
                                  invitationController12.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
                TextFormField(
                  controller: invitationController13,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: IconButton(
                          onPressed: () async {
                            await docUser.update({
                              'Invitation 13':
                                  invitationController13.text
                            });
                          },
                          icon: Icon(Icons.add))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
