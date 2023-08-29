import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_planner_application/models/invitation_list.dart';

import '../../dio/getData.dart';
import '../../shared/components/components.dart';

class ShowInvitation extends StatefulWidget {
  @override
  State<ShowInvitation> createState() => _ShowInvitationState();
}

class _ShowInvitationState extends State<ShowInvitation> {
  InvitationModel? invitationModel;
  bool isLoading = true;

  getUser() async {
    invitationModel = await GetData().readInvitation();
    print(invitationModel?.invit1);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    getUser();
    print(invitationModel?.invit10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invitation List",
          style: GoogleFonts.playfairDisplay(),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffb3c6),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: double.infinity,
              height: double.infinity,
              color: paige,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit1 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit2 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit3 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit4 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit5 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit6 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit7 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit8 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit9 ?? " None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit10 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit11 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit12 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.boy),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          invitationModel!.invit13 ?? "None yet",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
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
